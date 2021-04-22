//
//  SpinnerProductRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstViewProductRecharge: View {
    @Binding var idBank: String
    @State var isSheetOpened = false
    @State var selectedProducts = ProductsByBank()
    @State var products : [ProductsByBank] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonProducts : ObjectProductsByBank?
    @State var code: String = ""

    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()

                }) {
                
                Text("\(selectedProducts.name + " " + selectedProducts.symbol + " " + selectedProducts.currentBalance)").fontWeight(.bold)
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
                
                SheetproductsRecharge(products: self.products, isSheetOpened: self.isSheetOpened, selectedproduct:  self.$selectedProducts)
            }
         
 
        }.onAppear(
            perform: getJSONProducts)
    }

    func getJSONProducts() {
        let withdrawalControler = WithdrawalControler()
        let productsByBank = AL_GetProductsByBankId()
        
        if(!idBank.isEmpty){
            productsByBank.cpBankId = Constant.defaults.value(forKey: "BankIDRecharge") as! String

            productsByBank.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String
            
            withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
                        
                if res != nil {
                    self.jsonProducts = res! as ObjectProductsByBank
                    self.products = res!.envelope.body.productsByBankResponse._return.products
                    self.selectedProducts = products[0]
                    Constant.defaults.set(products[0].id, forKey: "ProductIDRecharge")
                }
                
                if error != nil {
                    let alert = ShowAlert()
                    alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                    print(error!)
                }
            }
        }
    }
    

}

struct SheetproductsRecharge: View {
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
                        Constant.defaults.set(index.id, forKey: "ProductIDRecharge")

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




