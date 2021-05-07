//
//  SpinnerCountryRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 30/04/21.
//  Copyright © 2021 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstViewBank: View {
    @State var isSheetOpened = false
    @State var isSheetOpenedbank = false
    @State var ini : Bool = true
    @State var noValueProduct : Bool = false
    @State var expand = false
    @State var separador: String = ""
    @State var code: String = ""
    @State var selectedBank = AccountBanks()
    @State var banks : [AccountBanks] = []
    @State var jsonBank : ObjectAccountBankByUser?
    @State var selectedProducts = ProductsByBank()
    @State var products : [ProductsByBank] = []
    @State var jsonProducts : ObjectProductsByBank?
    @State var selectText : String =  NSLocalizedString("selectoption", comment: "")

    let loading = Loading()
    var body: some View {

        VStack {
            BankWTextField()

            Button(action: {
                getJSONBank()
                self.selectedProducts.name = ""
                Constant.defaults.removeObject(forKey: "ProductIDW")
                self.isSheetOpenedbank.toggle()
                }) {
                if(selectedBank.bankId.name.isEmpty){
                    Text("\(selectText)")
                        .fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)
                        .frame(width: 340, alignment: .leading)
                }else{
                    Text("\(selectedBank.bankId.name)")
                        .fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)
                        .frame(width: 340, alignment: .leading)
                }
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
            .sheet(isPresented: self.$isSheetOpenedbank) {
                SheetbankWCountry(banks: self.banks, isSheetOpened: self.isSheetOpened, selectedbank: self.$selectedBank)
            }
            
            AccountNumTextField()
            AccountTypeTextField()
            
            ProductWTextField()

            Button(action: {
                getJSONProducts()
                self.isSheetOpened.toggle()
                }) {
                
                if(selectedProducts.name.isEmpty){
                    Text("\(selectText)")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .font(.callout)
                        .frame(width: 340, alignment: .leading)
                }else{
                    Text("\(selectedProducts.name + " " + selectedProducts.symbol + "  " + selectedProducts.currentBalance)")
                        .fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)
                        .frame(width: 340, alignment: .leading)
                }
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
                SheetProductsW(products: self.products, isSheetOpened: self.isSheetOpened, selectedproduct:  self.$selectedProducts)
            }
        }.onAppear(
            perform: getJSONBank)
    }
    
    struct BankWTextField: View {
        var body: some View {
            VStack(alignment: .center, spacing: 5) {
                Text("Seleccione la cuenta bancaria donde desea retirar los fondos")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .frame(width: 340, height: 80, alignment: .center)
                    .foregroundColor(.gray)
                    .padding(.top,0)
            }
        }
    }
    
    struct ProductWTextField: View {
        var body: some View {
            VStack(alignment: .center, spacing: 5) {
                Text( NSLocalizedString("selectproduct", comment: ""))
                    .font(.callout)
                    .frame(width: 340, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
    }
    
    func getJSONBank() {
        let controler = WithdrawalControler()
        let bankByCountry = AL_GetAccountBankByUser()
       
        controler.getAccountBankByUser(){ (res,error) in
            if res != nil {
                self.jsonBank = res! as ObjectAccountBankByUser
                self.banks = res!.envelope.body.AccountBankByUserResponse._return.accountBanks!
                self.selectedBank = banks[0]
                Constant.defaults.set(banks[0].id, forKey: "BankIDW")
            }
            
            if error != nil {
                self.selectedBank.accountNumber = ""
                self.selectedBank.bankId.name = ""
                self.selectedProducts.name = ""
                Constant.defaults.removeObject(forKey: "BankIDW")
                Constant.defaults.removeObject(forKey: "ProductIDW")

                //let alert = ShowAlert()
                //alert.showPaymentModeActionSheet(title: "error", message: controler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
    
    func getJSONProducts() {
        let withdrawalControler = WithdrawalControler()
        let productsByBank = AL_GetProductsByBankId()
        
        productsByBank.cpBankId = Constant.defaults.value(forKey: "BankIDW") as? String ?? ""
        productsByBank.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String
            
        if(productsByBank.cpBankId != nil){
            withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
                        
                if res != nil {
                    self.jsonProducts = res! as ObjectProductsByBank
                    self.products = res!.envelope.body.productsByBankResponse._return.products
                    self.selectedProducts = products[0]
                    Constant.defaults.set(products[0].id, forKey: "ProductIDW")
                }
                
                if error != nil {
                    self.selectedProducts.name = ""
                    Constant.defaults.removeObject(forKey: "ProductIDW")
                    //let alert = ShowAlert()
                    //alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                    print(error!)
                }
            }
        }
    }
}

struct SheetProductsW: View {
    var products : [ProductsByBank]
    var isSheetOpened : Bool    
    
    @Binding var selectedproduct: ProductsByBank
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.products, id: \.self) { index in
                    Button(action: {
                        self.selectedproduct = index
                        Constant.defaults.set(index.id, forKey: "ProductIDW")
                        self.presentationMode.wrappedValue.dismiss()
                        
                        let productSelected = ["id" : index.id,
                                               "nombreProducto" : index.name,
                                               "saldoActual" : index.currentBalance,
                                               "simbolo" : index.symbol]
                        
                        Constant.defaults.set(productSelected, forKey: "productSelected")
                    }) {
                        Text(index.name + " " + index.symbol + "  " + index.currentBalance)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 310, alignment: .leading)
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}

struct SheetbankWCountry: View {
    var banks : [AccountBanks]
    var isSheetOpened : Bool
    @Binding var selectedbank: AccountBanks
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.banks, id: \.self) { index in
                    Button(action: {
                        self.selectedbank = index
                        Constant.defaults.set(index.bankId.id, forKey: "BankIDW")

                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.bankId.name)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 310, alignment: .leading)
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}
