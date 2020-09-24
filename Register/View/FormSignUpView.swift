//
//  FormSignUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/15/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct FormSignUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    FormSignUpViewAccess()
                }
            }.navigationBarTitle("Datos de Registro", displayMode: .inline)
        }
    }
}

struct FormSignUpViewAccess: View {
    @State var name: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var rePass: String = ""
    @State var pass: String = ""
    @State var operationsKey: String = ""
    @State var isLoggedIn: Bool = false
    
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
                        TextLabelSignUp()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    NameTextField(name: self.$name)
                    LastNameTextField(lastName: self.$lastName)
                    MailTextField(email: self.$email)
                    PasswordTextField(password: self.$password)
                    RepeatPassTextField(rePass: self.$rePass)
                    PassTextField(pass: self.$pass)
                    OperationsKeyTextField(operationsKey: self.$operationsKey)
                    VStack{
                        PassInfLabel()
                            .frame(width: 360, height: 35)
                        NavigationLink(destination: WelcomeView()) {
                            RegisterButtonContent()
                        }
                        NavigationLink(destination: LoginView()) {
                            SignInLabel()
                        }
                        CondicionsLabel()
                            .frame(width: 360, height: 35)
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct NameTextField: View {
    @Binding var name: String
    var body: some View {
        FloatingLabelTextField($name, placeholder: "Nombre", editingChanged: { (isChanged) in
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

struct LastNameTextField: View {
    @Binding var lastName: String
    var body: some View {
        FloatingLabelTextField($lastName, placeholder: "Apellido", editingChanged: { (isChanged) in
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

struct MailTextField: View {
    @Binding var email: String
    var body: some View {
        FloatingLabelTextField($email, placeholder: "Correo Electrónico", editingChanged: { (isChanged) in
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

struct PasswordTextField: View {
    @Binding var password: String
    var body: some View {
        FloatingLabelTextField($password, placeholder: "Contraseña", editingChanged: { (isChanged) in
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

struct RepeatPassTextField: View {
    @Binding var rePass: String
    var body: some View {
        FloatingLabelTextField($rePass, placeholder: "Confirme la Contraseña", editingChanged: { (isChanged) in
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

struct PassTextField: View {
    @Binding var pass: String
    var body: some View {
        FloatingLabelTextField($pass, placeholder: "Introduzca una clave de 4 digitos", editingChanged: { (isChanged) in
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

struct OperationsKeyTextField: View {
    @Binding var operationsKey: String
    var body: some View {
        FloatingLabelTextField($operationsKey, placeholder: "Clave de operaciones", editingChanged: { (isChanged) in
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

struct PassInfLabel: View {
    var body: some View {
        Text("La contraseña debe tener 8 caractéres. Poseer\n mayúscula, minúscula, números y caractéres especiales")
            .font(.caption)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.fontOrangeColor)
            //.padding(.top,0)
    }
}

struct SignInLabel: View {
    var body: some View {
        Text("¿Ya tienes cuenta? Entra aquí")
            .font(.caption)
            .foregroundColor(Color.fontOrangeColor)
            .padding(.top,0)
    }
}

struct CondicionsLabel: View {
    var body: some View {
        Text("Al hacer clic en Regístrate, Usted acepta todos los Términos\n y Condiciones Alodiga")
            .font(.caption)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.fontOrangeColor)
            .padding(.top,0)
    }
}

struct RegisterButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Regístrate")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
    }
}

struct FormSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        FormSignUpView()
    }
}
