//
//  SpinnerBankRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

//
//  SpinnerCountryRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
//
//  SpinnerSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/15/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstViewBankRecharge: View {
    @Binding var idCountry: String
    @State var isSheetOpened = false
    @State var selectedBank = BankByCountry()
    @State var banks : [BankByCountry] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonBank : ObjectBankByCountry?
    @State var code: String = ""

    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()

                }) {
                
                Text("\(selectedBank.name)").fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)
                    .frame(width: 340, alignment: .leading)
                
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
            }
            .padding(10)
            .cornerRadius(10)
            .clipShape(Rectangle())
            
            .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
           
            .sheet(isPresented: self.$isSheetOpened) {
                
                SheetbankRecharge(banks: self.banks, isSheetOpened: self.isSheetOpened, selectedbank: self.$selectedBank)
            }
            
            ProductRechargeTextField()
            if (!selectedBank.id.isEmpty){
                FirstViewProductRecharge(idBank: self.$selectedBank.id)
            }
         
 
        }.onAppear(
            perform: getJSONBank)
    }

    func getJSONBank() {
        let withdrawalControler = WithdrawalControler()
        let bankByCountry = AL_GetBankByCountryApp()
        
        bankByCountry.cpCountryId =  Constant.defaults.value(forKey: "CountryIDRecharge") as! String

        
        withdrawalControler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
            if res != nil {
                self.jsonBank = res! as ObjectBankByCountry
                self.banks = res!.envelope.body.bankByCountryResponse._return.banks
                self.selectedBank = banks[0]
                Constant.defaults.set(banks[0].id, forKey: "BankIDRecharge")
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
    

}
struct ProductRechargeTextField: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Selecciona el Producto")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
        }
    }
}
struct SheetbankRecharge: View {
    var banks : [BankByCountry]
    var isSheetOpened : Bool
    
    
    @Binding var selectedbank: BankByCountry
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.banks, id: \.self) { index in
            
                    Button(action: {
                        
                        self.selectedbank = index
                        Constant.defaults.set(index.id, forKey: "BankIDRecharge")

                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.name).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 310, alignment: .leading)
                    }
                        
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}



