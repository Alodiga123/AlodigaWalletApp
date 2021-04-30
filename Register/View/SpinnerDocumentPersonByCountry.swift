//
//  SpinnerCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 09/12/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI

struct DocumentByCountryTextField: View {
    @State var documentPersonByCountry : [DocumentsPersonTypes] = []
    @State var jsonDocumentPersonTypeByContry : ObjectDocumentPersonTypeByContry?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("SelectDocumentT")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            DocumentPersonByCountrylList()
        }
    }
}

struct DocumentPersonByCountrylList: View {
    @State var isSheetOpened = false
    @State var selectedDocumentT = DocumentsPersonTypes()
    @State var documentPersonByCountry : [DocumentsPersonTypes] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonDocumentPersonTypeByContry : ObjectDocumentPersonTypeByContry?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                code = selectedDocumentT.id
            }) {
                Text("\(selectedDocumentT.description)")
                    //.fontWeight(.bold)
                    .foregroundColor(.gray)
                    .font(.callout)
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                }.padding(10)
                .cornerRadius(10)
                .clipShape(Rectangle())
                .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
                .sheet(isPresented: self.$isSheetOpened) {
                    tipoDocumentos(documentPersonByCountry: self.documentPersonByCountry, isSheetOpened: self.isSheetOpened, selectedDocumentT: self.$selectedDocumentT)
                }
            //line
            //BankWithdrawalTextField()
            /*if (!selectedDocumentT.id.isEmpty){
                BankWithdrawalList(idCountry: self.$selectedDocumentT.id)
            }*/
            
        }.onAppear(
            perform: getJSONCountry
        )
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let documentByCountry = AL_GetDocumentPersonTypeByCountry()
        
        documentByCountry.cpCountryId = Constant.defaults.value(forKey: "idCountryR") as! String
        documentByCountry.cpOriginAplicationId = "1";
        
        registerController.getDocumentPersonTypeByCountry(generarDocumentPersonType: documentByCountry) { (res,error) in
            if res != nil {
                self.jsonDocumentPersonTypeByContry = res! as ObjectDocumentPersonTypeByContry
                self.documentPersonByCountry = res!.envelope.body.documentByCountryResponse._return.documentsPersonTypes
                self.selectedDocumentT = documentPersonByCountry[0]
                Constant.defaults.setValue(selectedDocumentT.id, forKey: "idDocumentR")
                
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                print(error!)
            }
        }
    }
}

struct tipoDocumentos: View {
    var documentPersonByCountry : [DocumentsPersonTypes]
    var isSheetOpened : Bool
    @Binding var selectedDocumentT: DocumentsPersonTypes
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.documentPersonByCountry, id: \.self) { index in
                    Button(action: {
                        self.selectedDocumentT = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.codeIdentification, forKey: "codeIdentificationR")
                        Constant.defaults.setValue(index.id, forKey: "idDocumentR")
                        Constant.defaults.setValue(index.description, forKey: "descriptionDocumentR")
                        print("codigo Identificacion: " + index.codeIdentification)
                        print("Id doc: " + index.id)
                        
                    }) {
                        Text(index.description)
                            .font(.callout)
                            .fontWeight(.bold)
                            .frame(width: 340, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}
