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
            }.navigationBarTitle("Clave de operaciones", displayMode: .inline)
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
                    Spacer()
                    TextLabelOperationKey()
                        .frame(height: 10)
                    OperationKeyTextField(key: self.$key)
                    
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

struct OperationsKeyQRView_Previews: PreviewProvider {
    static var previews: some View {
        OperationsKeyQRView()
    }
}
