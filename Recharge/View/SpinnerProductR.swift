//
//  SpinnerProduct.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 18/04/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI

struct ProductsRechargeTextField: View {
    
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

struct ProductsRechargeList: View {
    @Binding var idBank: String
    @State var isSheetOpened = false
    @State var selectedProducts = ProductsByBank()
    @State var products : [ProductsByBank] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonProducts : ObjectProductsByBank?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedProducts.name + " " + selectedProducts.symbol + " " + selectedProducts.currentBalance)")
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
                productosR(products: self.products, isSheetOpened: self.isSheetOpened, selectedProduct: self.$selectedProducts)
            }
        }.onAppear(
            perform: getJSONProducts
        )
    }
    
    func getJSONProducts() {
        let withdrawalControler = WithdrawalControler()
        let productsByBank = AL_GetProductsByBankId()
        
        if(!idBank.isEmpty){
            productsByBank.cpBankId = self.idBank
            productsByBank.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String
            
            withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
                        
                if res != nil {
                    self.jsonProducts = res! as ObjectProductsByBank
                    self.products = res!.envelope.body.productsByBankResponse._return.products
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


struct productosR: View {
    var products : [ProductsByBank]
    var isSheetOpened : Bool
    @Binding var selectedProduct: ProductsByBank
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.products, id: \.self) { index in
                    Button(action: {
                        self.selectedProduct = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        let productSelected = ["id" : index.id,
                                               "nombreProducto" : index.name,
                                               "saldoActual" : index.currentBalance,
                                               "simbolo" : index.symbol]
                        
                        Constant.defaults.set(productSelected, forKey: "productSelected")
                        
                        /*Constant.defaults.setValue(index.name, forKey: "nameProductRe")
                        Constant.defaults.setValue(index.id, forKey: "idProductRe")*/
                        print("Nombre del Producto: "+index.name)
                        print("Id producto: " + index.id)
                    }) {
                        Text(index.name + " " + index.symbol + " " + index.currentBalance)
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

