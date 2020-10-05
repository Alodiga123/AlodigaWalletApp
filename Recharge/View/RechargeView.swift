//
//  RechargeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct RechargeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    RechargeViewAccess()
                }
            }.navigationBarTitle("Recarga", displayMode: .inline)
        }
    }
}

struct RechargeViewAccess: View {
    @State var country: String = ""
    @State var bank: String = ""
    @State var product: String = ""
    @State var concept: String = ""
    @State var transfer: String = ""
    @State var amount: String = ""
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelRecharge()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    CountryRechargeTextField(country: self.$country)
                    BankRechargeTextField(bank: self.$bank)
                    ProductRechargeTextField(product: self.$product)
                    ConceptoRechargeTextField(concept: self.$concept)
                    TransferRechargeTextField(transfer: self.$transfer)
                    AmountRechargeTextField(amount: self.$amount)
                    //NavigationLink(destination: RechargeConfirmationView()) {
                    Button(action: {
                         
                         let responseController = ResponseController()
                        
                         responseController.parseResponse{ (response) in
                            
                            if response != nil {
                                print("+++++++++++ OBJETO +++++++++++++++++")
                                print(response)
                            }
                         
                         }
                 
                                     }) {
                            RechargeButtonContent()
                    }
                   // }
                    
                    
                    NavigationLink(destination: MainViewLogged()) {
                        RechargeBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelRecharge: View {
    var body: some View {
        Text("Recarga Manual")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct CountryRechargeTextField: View {
    @Binding var country: String
    var body: some View {
        FloatingLabelTextField($country, placeholder: "País", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct BankRechargeTextField: View {
    @Binding var bank: String
    var body: some View {
        FloatingLabelTextField($bank, placeholder: "Banco", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct ProductRechargeTextField: View {
    @Binding var product: String
    var body: some View {
        FloatingLabelTextField($product, placeholder: "Producto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct ConceptoRechargeTextField: View {
    @Binding var concept: String
    var body: some View {
        FloatingLabelTextField($concept, placeholder: "Concepto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct TransferRechargeTextField: View {
    @Binding var transfer: String
    var body: some View {
        FloatingLabelTextField($transfer, placeholder: "Número de Transferencia", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct AmountRechargeTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: "Monto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct RechargeButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Procesar Recarga")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
    }
}

struct RechargeBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Atras")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom)
    }
}


struct RechargeView_Previews: PreviewProvider {
    static var previews: some View {
        RechargeView()
    }
}
