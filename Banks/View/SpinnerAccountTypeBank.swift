//
//  SpinnerProduct.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 22/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI

struct AccountTypeBankTextField: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Selecciona el Tipo de Cuenta")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            AccountTypeBankList()
        }
    }
}

struct AccountTypeBankList: View {
    @State var isSheetOpened = false
    @State var selectedAccountTypeBank = Account()
    @State var accountTypeBank : [Account] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonAccountTypeBank : ObjectAccountTypeBank?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedAccountTypeBank.description)")
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
                tipoCuenta(accountTypeBank: self.accountTypeBank, isSheetOpened: self.isSheetOpened, selectedAccountTypeBank: self.$selectedAccountTypeBank)
            }
        }.onAppear(
            perform: getJSONAccountTypeBank
        )
    }
    
    func getJSONAccountTypeBank() {
        let bankControler = BankController()
        let productsByBank = AL_GetAccountTypeBank()
            
        bankControler.getAccountTypeBank(tipoDeCuenta: productsByBank){ (res,error) in
                    
            if res != nil {
                self.jsonAccountTypeBank = res! as ObjectAccountTypeBank
                self.accountTypeBank = res!.envelope.body.AccountTypeBankResponse._return.accountTypeBank
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: bankControler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
}


struct tipoCuenta: View {
    var accountTypeBank : [Account]
    var isSheetOpened : Bool
    @Binding var selectedAccountTypeBank: Account
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.accountTypeBank, id: \.self) { index in
                    Button(action: {
                        self.selectedAccountTypeBank = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        let accountTypeBankSelected = ["code" : index.code,
                                                       "description" : index.description,
                                                       "id" : index.id]
                        
                        Constant.defaults.set(accountTypeBankSelected, forKey: "accountTypeBankSelected")
                        Constant.defaults.setValue(index.id, forKey: "accountTypeId")
                        
                        print("Tipo de cuenta: "+index.description)
                        print("Id producto: " + index.id)
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

