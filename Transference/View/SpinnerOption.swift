//
//  SpinnerOpcion.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/11/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI
import FloatingLabelTextFieldSwiftUI


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
    
    let cel = optionTransference(name: NSLocalizedString("forEmail", comment: ""), id: "0")
    let qr = optionTransference(name: NSLocalizedString("forPhone", comment: ""), id: "1")
    let email = optionTransference(name: NSLocalizedString("forQr", comment: ""), id: "2")

    option = [cel, qr, email]

  }
}

struct FirstViewSpinnerOption: View {
    @State var isSheetOpened = false
    @State var selectedProduct = optionTransference(name: NSLocalizedString("forEmail", comment: ""), id: "0")
    //var products = Manager()
    @State var options = Manager()
    @State var expand = false
    @State var separador: String = ""
    @State var user: String = ""
    
    var line: some View {
        VStack { Divider().background(Color.fontBlackColor).border(Color.black, width: 5) }.padding(.bottom,10).frame(width: 380, alignment: .center)
       }
    
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
            
            line
            
            if(selectedProduct.id == "0"){
                EmailTextField(user: self.$user)
            }else if(selectedProduct.id == "1"){
                PhoneTextField(user: self.$user)
            }else if(selectedProduct.id == "2"){
                NavigationLink(destination: TargetCustomerView()) {
                    TransferenceQrButtonContent()
                   }
            }

            if(selectedProduct.id == "0" || selectedProduct.id == "1"){
                Button(action: {
                    let controller = TransferenceController()

                    controller.getUserByEmailOrPhone(option: selectedProduct.id, data: user) { (res, error) in
                        print(res)
                    }
                    
                
                
                }){
                    TransferenceSerchButtonContent()
                    }
            }
            
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
                        
                        //let optionSelected = ["id" : index.id,
                          //          "name" : index.name]
                        
                        
                        Constant.defaults.set(index.id, forKey: "optionSelected")
                        
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

