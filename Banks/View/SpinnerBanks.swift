//
//  SpinnerBank.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 21/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI


struct BanksTextField: View {
    
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

struct BanksList: View {
    @Binding var idCountry: String
    @State var isSheetOpened = false
    @State var selectedBank = BankByCountry()
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
                Text("\(selectedBank.name)")
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
                    bancosB(banks: self.banks, isSheetOpened: self.isSheetOpened, selectedBanks: self.$selectedBank)
                }
            /*ProductsRechargeTextField()
            if (!selectedBank.id.isEmpty){
                ProductsRechargeList(idBank: self.$selectedBank.id)
            }*/
            
        }.onAppear(
            perform: getJSONBank
        )
    }
    
    func getJSONBank() {
        let withdrawalControler = WithdrawalControler()
        let bankByCountry = AL_GetBankByCountryApp()
        
        bankByCountry.cpCountryId = self.idCountry
        
        withdrawalControler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
            if res != nil {
                self.jsonBank = res! as ObjectBankByCountry
                self.banks = res!.envelope.body.bankByCountryResponse._return.banks
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
}

struct bancosB: View {
    var banks : [BankByCountry]
    var isSheetOpened : Bool
    @Binding var selectedBanks: BankByCountry
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.banks, id: \.self) { index in
                    Button(action: {
                        self.selectedBanks = index
                        
                        let banksSelected = ["idBanks" : index.id,
                                            "nameBanks" : index.name]
                        Constant.defaults.set(banksSelected, forKey: "banksSelected")
                        
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

