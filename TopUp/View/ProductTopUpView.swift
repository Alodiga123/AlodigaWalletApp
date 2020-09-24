//
//  ProductTopUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ProductTopUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ProductTopUpViewAccess()
                }
            }.navigationBarTitle("Producto", displayMode: .inline)
        }
    }
}

struct ProductTopUpViewAccess: View {
    @State var productDebit: String = ""
    @State var operatorPhone: String = ""
    @State var productRecharger: String = ""
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .center) {
                        TextLabelTopUp()
                    }
                    ProductDebitTextField(productDebit: self.$productDebit)
                    OperatorTextField(operatorPhone: self.$operatorPhone)
                    ProductRechargerTextField(productRecharger: self.$productRecharger)
                    NavigationLink(destination: OperationKeyTopUpView()) {
                        TopUpBuyButtonContent()
                    }
                    NavigationLink(destination: TopUpView()) {
                        TopUpBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/3.2)
        }
    }
}

struct ProductDebitTextField: View {
    @Binding var productDebit: String
    var body: some View {
        FloatingLabelTextField($productDebit, placeholder: "Producto a Debitar", editingChanged: { (isChanged) in
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

struct ProductRechargerTextField: View {
    @Binding var productRecharger: String
    var body: some View {
        FloatingLabelTextField($productRecharger, placeholder: "Producto a Recargar", editingChanged: { (isChanged) in
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

struct OperatorTextField: View {
    @Binding var operatorPhone: String
    var body: some View {
        FloatingLabelTextField($operatorPhone, placeholder: "Seleccione la Operadora", editingChanged: { (isChanged) in
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

struct TopUpBuyButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Comprar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ProductTopUpView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTopUpView()
    }
}
