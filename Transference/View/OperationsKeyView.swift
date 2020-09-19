//
//  OperationsKey.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationsKeyView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationsKeyViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct OperationsKeyViewAccess: View {
    @State var key: String = ""
    var body: some View {
        //ScrollView{
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
                            TextLabelTransference()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        Spacer()
                            .frame(height: 10)
                        TextLabelOperationKey()
                        OperationKeyTextField(key: self.$key)
                        
                        NavigationLink(destination: ConfirmationView()) {
                            SendButtonContents()
                        }
                        
                        NavigationLink(destination: TargetCustomerView()) {
                            BackButtonContent()
                        }
                        
                        Spacer()
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        //}
    }
}

struct TextLabelOperationKey: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("Introduzca la clave de Operaciones")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}


struct OperationKeyTextField: View {
    @Binding var key: String
    var body: some View {
        FloatingLabelTextField($key, placeholder: "Clave de Operaciones Especiales", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            })
            .placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top)
            .padding(.bottom,0)
    }
}

struct SendButtonContents: View {
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

struct OperationsKeyView_Previews: PreviewProvider {
    static var previews: some View {
        OperationsKeyView()
    }
}
/*
 func Ejecutar3(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
*/
