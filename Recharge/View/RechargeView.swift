//
//  TransferenceView.swift
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
                        Spacer()
                        TextLabelRecharge()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    CountryTextField(country: self.$country)
                    BankTextField(bank: self.$bank)
                    ProductTextField(product: self.$product)
                    ConceptoTextField(concept: self.$concept)
                    TransferTextField(transfer: self.$transfer)
                    AmountTextField(amount: self.$amount)
                    NavigationLink(destination: RechargeConfirmationView()) {
                        RechargeButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/4.3)
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

struct BankTextField: View {
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

struct ProductTextField: View {
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

struct ConceptoTextField: View {
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

struct TransferTextField: View {
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

struct AmountTextField: View {
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


struct RechargeView_Previews: PreviewProvider {
    static var previews: some View {
        RechargeView()
    }
}
