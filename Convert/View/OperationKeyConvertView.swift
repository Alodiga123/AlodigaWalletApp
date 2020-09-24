//
//  OperationKeyConvertView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/21/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationKeyConvertView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationKeyConvertViewAccess()
                }
            }.navigationBarTitle("Clave de Operaciones", displayMode: .inline)
        }
    }
}

struct OperationKeyConvertViewAccess: View {
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
                        TextLabelConvert()
                    }.padding(.leading,20)
                    .padding(.trailing,20)
                    .frame(height: 10)
                    Spacer()
                    TextLabelOperationKey()
                    OKConvertTextField(key: self.$key)
                    
                    NavigationLink(destination: ConfirmationConvertView()) {
                        ConvertProcessButtonContent()
                    }
                    
                    NavigationLink(destination: CommissionView()) {
                        ConvertBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct OKConvertTextField: View {
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
            .padding(.bottom,0)
    }
}

struct ConvertProcessButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Procesar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct OperationKeyConvertView_Previews: PreviewProvider {
    static var previews: some View {
        OperationKeyConvertView()
    }
}
