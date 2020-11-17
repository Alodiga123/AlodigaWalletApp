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
    @State var isgetUserSuccesIn: Bool = false
    
    
    func getUserSucces(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isgetUserSuccesIn = true
        }
    }
    
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
                    let util = Utils()
                    let alert = ShowAlert()
                    
                    if(selectedProduct.id == "0"){
                        if(user.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                        }else if(!util.isValidEmail(testStr: user)){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("email_invalid", comment: "") )
                        }else{
                            
                            
                            controller.getUserByEmail(data: user) { (objectGetUsuarioByEmail, error) in
                                if(objectGetUsuarioByEmail != nil){
                                    Constant.defaults.set("0", forKey: "optionTransference")
                                    self.getUserSucces()
                                }
                                if error != nil {
                                    let alert = ShowAlert()
                                    alert.showPaymentModeActionSheet(title: "error", message: controller.getMessageErrorTransference(code: error!))
                                    print(error!)
                                }
                                
                            }
                            
                            
                            
                        }
                        
                    }
                    
                    if(selectedProduct.id == "1"){
                        
                        if(user.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                        }else if(user.count <= 11){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("invalidPhone", comment: "") )
                        }else{
                        controller.getUserByMovil(data: user) { (res, error) in
                            print(res)
                            if(res != nil){
                                Constant.defaults.set("1", forKey: "optionTransference")
                                self.getUserSucces()
                            }
                            
                            if error != nil {
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: controller.getMessageErrorTransference(code: error!))
                                print(error!)
                            }
                        }
                        }
                        
                    }
                    
                }){
                    TransferenceSerchButtonContent()
                }
                
                
                
                
                
            }
            
            
            
        }
        
        NavigationLink(destination: TargetCustomerView(), isActive:self.$isgetUserSuccesIn){
            EmptyView()
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
                        Constant.defaults.set(index.id, forKey: "optionSelected")
                        
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.name).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 340, alignment: .leading)
                        
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}

