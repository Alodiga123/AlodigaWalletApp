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
    @State var documentPersonByConuntry : [DocumentByCountry] = []
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
    @State var selectedDocumentT = DocumentByCountry()
    @State var documentPersonByCountry : [DocumentByCountry] = []
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
                Text("\(selectedDocumentT.alternativeName3)")
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
            if (!selectedDocumentT.id.isEmpty){
                BankWithdrawalList(idCountry: self.$selectedDocumentT.id)
            }
            
        }.onAppear(
            perform: getJSONCountry
        )
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let documentByContry = AL_GetDocumentPersonTypeByCountry()
        
        registerController.getDocumentPersonTypeByCountry(generarDocumentPersonType: documentByContry) { (res,error) in
            self.jsonDocumentPersonTypeByContry = res! as ObjectDocumentPersonTypeByContry
            //self.documentPersonByCountry = res!.envelope.body.documentByCountryResponse
        }
    }
}

struct tipoDocumentos: View {
    var documentPersonByCountry : [DocumentByCountry]
    var isSheetOpened : Bool
    @Binding var selectedDocumentT: DocumentByCountry
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.documentPersonByCountry, id: \.self) { index in
                    Button(action: {
                        self.selectedDocumentT = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.name, forKey: "nameCountryR")
                        Constant.defaults.setValue(index.id, forKey: "idCountryR")
                        Constant.defaults.setValue(index.code, forKey: "codeCountryR")
                        //print("codigo Pais: " + index.code)
                        //print("Id Pais: " + index.id)
                    }) {
                        Text(index.alternativeName3)
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
