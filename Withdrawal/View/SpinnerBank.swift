//
//  SpinnerBank.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 29/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI


struct BankWithdrawalTextField: View {
    
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

struct BankWithdrawalList: View {
    //@Binding var idCountry: String
    @State var isSheetOpened = false
    @State var selectedBank = AccountBanks()
    @State var banks : [AccountBanks] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonBank : ObjectAccountBankByUser?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedBank.bankId.name)")
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
                    bancos(banks: self.banks, isSheetOpened: self.isSheetOpened, selectedBank: self.$selectedBank)
                }
            //ProductWithdrawalTextField()
            /*if (!selectedBank.id.isEmpty){
                ProductsWithdrawalList(idBank: self.$selectedBank.id)
            }*/
            
        }.onAppear(
            perform: getJSONBank
        )
    }
    
    func getJSONBank() {
        let withdrawalControler = WithdrawalControler()
        let bankByCountry = AL_GetBankByCountryApp()
        
        withdrawalControler.getAccountBankByUser() { (res,error) in
            if res != nil {
                self.jsonBank = res! as ObjectAccountBankByUser
                self.banks = res!.envelope.body.AccountBankByUserResponse._return.accountBanks!
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
}

struct bancos: View {
    var banks : [AccountBanks]
    var isSheetOpened : Bool
    @Binding var selectedBank: AccountBanks
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.banks, id: \.self) { index in
                    Button(action: {
                        self.selectedBank = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.bankId.name, forKey: "nameBankR")
                        Constant.defaults.setValue(index.bankId, forKey: "idBankR")
                        print("Numero de la Cuenta del Banco: "+index.accountNumber!)
                        
                    }) {
                        Text(index.bankId.name)
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

