//
//  SpinnerCurrencyPayment.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 5/6/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstPaymentView: View {
    @State var isSheetOpened = false
    //var products = Manager()
    @State var products : [ListadoProductos] = []
    @State var selectedProduct = ListadoProductos()
    @State var expand = false
    @State var separador: String = " - "
    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                }) {
                
                Text("\(selectedProduct.nombreProducto + " " + selectedProduct.simbolo + separador + selectedProduct.saldoActual )").fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)                .frame(width: 290, alignment: .leading)
                
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
                Sheet(products: self.products, isSheetOpened: self.isSheetOpened, selectedProduct: self.$selectedProduct)
            }
            
            //Text("\(selectedProduct)")
        }.onAppear(
            perform: getProduct
        )
    }
    
    
    func getProduct()  {
     let util = Utils()
        var listado : [ListadoProductos] = util.getProductSession()
        var listadoaux : [ListadoProductos] = []

        for index in  listado {
            if(index.isUsePrepaidCard != "true"){
                listadoaux.append(index)
            }
            }
        self.products = listadoaux
        self.selectedProduct = products[0]
        let currencySelected = ["id" : selectedProduct.id,
                    "isPayTopUP" : selectedProduct.isPayTopUP,
                    "nombreProducto" : selectedProduct.nombreProducto,
                    "saldoActual" : selectedProduct.saldoActual,
                    "simbolo" : selectedProduct.simbolo,
                    "isUsePrepaidCard" : selectedProduct.isUsePrepaidCard]
        Constant.defaults.set(currencySelected, forKey: "currencySelected")

    }
    
    func removeTP(){
  
        }
    
    func getJSONLogin() {
        loading.loadindView()
        var objetResponse: ObjectLogin
        let str: String = Constant.defaults.value(forKey: "jsonLogin") as! String
        do {
            objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: str.data(using: .utf8)!)
            print("OBJETO DECODE")
            print(objetResponse)
            self.products = objetResponse.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos!
            self.selectedProduct = products[0]
        } catch  {
            loading.loadingDismiss()
            print("Error: decodificando json")
        }
        
        loading.loadingDismiss()
    }
}

struct SheetPayment: View {
    var products : [ListadoProductos]
    var isSheetOpened : Bool
    @Binding var selectedProduct: ListadoProductos
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            List {
                ForEach(self.products, id: \.self) { index in
                    Button(action: {
                        self.selectedProduct = index
                        let currencySelected = ["id" : index.id,
                                    "isPayTopUP" : index.isPayTopUP,
                                    "nombreProducto" : index.nombreProducto,
                                    "saldoActual" : index.saldoActual,
                                    "simbolo" : index.simbolo,
                                    "isUsePrepaidCard" : index.isUsePrepaidCard]
                        Constant.defaults.set(currencySelected, forKey: "currencySelected")
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.nombreProducto + " " + index.simbolo + " - " + index.saldoActual).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)                .frame(width: 340, alignment: .leading)

                        
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}

