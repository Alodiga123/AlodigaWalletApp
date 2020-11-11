//
//  SpinnerOpcion.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/11/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI

struct optionTransference : Hashable {
    var id: String
    var name : String
    
    init(name: String, id: String) {
      self.name = name
        self.id = id
      
    }
    
  
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(id)
      hasher.combine(name)
    }
}

class Manager {

  var option : [optionTransference] = []

  init() {


    let cel = optionTransference(name: "forEmail", id: "1")
    let qr = optionTransference(name: "forPhone", id: "2")
    let email = optionTransference(name: "forQr", id: "3")

    option = [cel, qr, email]

  }
}

struct FirstViewSpinnerOption: View {
    @State var isSheetOpened = false
    @State var selectedProduct = optionTransference(name: "Seleccione una opcion", id: "0")
    //var products = Manager()
    @State var options = Manager()
    @State var expand = false
    @State var separador: String = ""
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                
                Text("\(selectedProduct.name )").fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)                .frame(width: 340, alignment: .leading)
                
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
                SheetSpinnerOption(products: self.options, isSheetOpened: self.isSheetOpened, selectedProduct: self.$selectedProduct)
            }
            
            //Text("\(selectedProduct)")
        }
    }
}

struct SheetSpinnerOption: View {
    var products : Manager
    var isSheetOpened : Bool
    @Binding var selectedProduct : optionTransference
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.products.option, id: \.self) { index in
                    Button(action: {
                        self.selectedProduct = index
                        
                        /*let currencySelected = ["id" : index.id,
                                    "isPayTopUP" : index.isPayTopUP,
                                    "nombreProducto" : index.nombreProducto,
                                    "saldoActual" : index.saldoActual,
                                    "simbolo" : index.simbolo]
                        Constant.defaults.set(currencySelected, forKey: "currencySelected")
*/
                      
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.name).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)                .frame(width: 340, alignment: .leading)

                        
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}

