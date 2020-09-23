//
//  SecurityLevelView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/23/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SecurityLevelView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SecurityLevelViewAccess()
                }
            }.navigationBarTitle("Recuperar Contraseña", displayMode: .inline)
        }
    }
}

struct SecurityLevelViewAccess: View {
    @State var pass: String = ""
    @State var repeatPass: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelRecuverPassword()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        TextLabelSecurity()
                        NewPassTextField(pass: self.$pass)
                        RepeatNewPassTextField(repeatPass: self.$repeatPass)
                        TextLabelRecoverPass()
                        Spacer()
                        NavigationLink(destination: SuccesfulRecoverView()) {
                            ContinueRecoButtonContent()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            CancelRecorButtonContent()
                        }
                        
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/3.2)
            }
        }
    }
}

struct TextLabelSecurity: View {
    var body: some View {
        Text("Nivel de seguridad")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 10)
            .padding()
    }
}

struct NewPassTextField: View {
    @Binding var pass: String
    var body: some View {
        FloatingLabelTextField($pass, placeholder: "Nueva contraseña", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct RepeatNewPassTextField: View {
    @Binding var repeatPass: String
    var body: some View {
        FloatingLabelTextField($repeatPass, placeholder: "Repita la nueva contraseña", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct TextLabelRecoverPass: View {
    var body: some View {
        Text("La contraseña debe tener 8 caracteres. Poseer mayúscula, minúscula, números y caracteres especiales")
            .font(.caption)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 340, height: 60, alignment: .leading)
            .padding(.top,0)
            .padding(.bottom,0)
    }
}

struct SecurityLevelView_Previews: PreviewProvider {
    static var previews: some View {
        SecurityLevelView()
    }
}
