//
//  SpinnerBank.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 21/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI


struct BanksByCountryTextField: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Selecciona el Banco")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
        }
    }
}

struct BanksByCountryList: View {
    @Binding var idCountryHasBank: String
    @State var isSheetOpened = false
    @State var selectedBanksByCountry = BankByCountry()
    @State var banks : [BankByCountry] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonBank : ObjectBankByCountry?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedBanksByCountry.name)")
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
                    bancosByCountry(banksByCountry: self.banks, isSheetOpened: self.isSheetOpened, selectedBanksByCountry: self.$selectedBanksByCountry)
                }
            
        }.onAppear(
            perform: getJSONBank
        )
    }
    
    func getJSONBank() {
        let bankControler = BankController()
        let bankByCountry = AL_GetBankByCountryApp()
        
        bankByCountry.cpCountryId = self.idCountryHasBank
        
        bankControler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
            /*if res != nil {
                self.jsonBank = res! as ObjectBankByCountryUS
                self.banks = res!.envelope.body.bankByCountryResponse._return.banks
            }*/
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: bankControler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
}

struct bancosByCountry: View {
    var banksByCountry : [BankByCountry]
    var isSheetOpened : Bool
    @Binding var selectedBanksByCountry: BankByCountry
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.banksByCountry, id: \.self) { index in
                    Button(action: {
                        self.selectedBanksByCountry = index
                        
                        let banksByCountrySelected = ["idBanks" : index.id,
                                            "nameBanks" : index.name]
                        Constant.defaults.set(banksByCountrySelected, forKey: "banksByCountrySelected")
                        
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.name, forKey: "nameBanks")
                        Constant.defaults.setValue(index.id, forKey: "idBanks")
                        print("Nombre del Banco: "+index.name)
                        print("Id del Banco: " + index.id)
                        
                    }) {
                        Text(index.name)
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

