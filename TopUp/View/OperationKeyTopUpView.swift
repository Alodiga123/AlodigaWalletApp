//
//  OperationKeyTopUpView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/19/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationKeyTopUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationKeyTopUpViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct OperationKeyTopUpViewAccess: View {
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
                        TextLabelTopUp()
                        Spacer()
                    }
                    Spacer()
                    TextLabelOperationKeyTopUp()
                    TopUpOKTextField(key: self.$key)
                    
                    NavigationLink(destination: ConfirmationView()) {
                        TopUpSendButtonContents()
                    }
                    
                    NavigationLink(destination: ProductTopUpView()) {
                        TopUpBackButtonContent()
                    }
                    
                }.background(Color.cardButtonViewGray)
                .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelOperationKeyTopUp: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("Introduzca la clave de Operaciones")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}


struct TopUpOKTextField: View {
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
            .padding(.top)
            .padding(.bottom,10)
    }
}

struct TopUpSendButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Enviar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct OperationKeyTopUpView_Previews: PreviewProvider {
    static var previews: some View {
        OperationKeyTopUpView()
    }
}
