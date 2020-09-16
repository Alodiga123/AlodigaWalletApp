//
//  OperationsKey.swift
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
                Image("back_login")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationsKeyQRViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
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
                        Spacer()
                        TextLabelPayment()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    Spacer()
                        .frame(height: 10)
                    TextLabelOperationKey()
                    OperationKeyTextField(key: self.$key)
                    
                    NavigationLink(destination: ConfirmationQRView()) {
                        SendButtonContents()
                    }
                    
                    NavigationLink(destination: TargetCustomerQRView()) {
                        BackButtonContent()
                    }
                    
                    Spacer()
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
/*
 func Ejecutar3(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
*/
