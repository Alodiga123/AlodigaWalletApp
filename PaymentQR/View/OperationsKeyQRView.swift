//
//  OperationsKeyQRView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationsKeyQRView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationsKeyQRViewAccess()
                }
            }.navigationBarTitle("OperationsKey", displayMode: .inline)
        }
    }
}

struct OperationsKeyQRViewAccess: View {
    @State var key: String = ""
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack {
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelPayment()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    TextLabelOperKeyPay()
                    PayOperationKeyTextField(key: self.$key)
                    
                    NavigationLink(destination: ConfirmationQRView()) {
                        PaymentSendButtonContent()
                    }                    
                    NavigationLink(destination: TargetCustomerQRView()) {
                        PaymentBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelOperKeyPay: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("OperationPass")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding(.top,25)
        }
    }
}

struct PayOperationKeyTextField: View {
    @Binding var key: String
    var body: some View {
        FloatingLabelTextField($key, placeholder: "Clave de Operaciones Especiales", editingChanged: { (isChanged) in
        }) {
        }
        .leftView({ // Add left view.
            Image("password")
        })
        .placeholderColor(Color.placeholderGrayColor)
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
    }
}

struct OperationsKeyQRView_Previews: PreviewProvider {
    static var previews: some View {
        OperationsKeyQRView()
    }
}
