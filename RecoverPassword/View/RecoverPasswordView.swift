//
//  RecoverPasswordView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/23/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct RecoverPasswordView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    RecoverPasswordViewAccess()
                }
            }.navigationBarTitle("Recuperar Contraseña", displayMode: .inline)
        }
    }
}

struct RecoverPasswordViewAccess: View {
    @State var mail: String = ""
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
                        TextLabelRecover()
                        EmailRecorTextField(mail: self.$mail)
                        NavigationLink(destination: RecoverPasswordByTokenView()) {
                            ContinueRecoButtonContent()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            CancelRecorButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelRecover: View {
    var body: some View {
        Text("Por favor ingrese su correo electrónico registrado")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 45)
            .padding()
    }
}

struct EmailRecorTextField: View {
    @Binding var mail: String
    var body: some View {
        FloatingLabelTextField($mail, placeholder: "Correo electrónico", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("email")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,30)
            .padding(.trailing,20)
            .padding(.bottom,5)
    }
}



struct ContinueRecoButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Continuar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct CancelRecorButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Cancelar")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,10)
    }
}

struct RecoverPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordView()
    }
}
