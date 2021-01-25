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
            }.navigationBarTitle("RegistrationData", displayMode: .inline)
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
    @State var stepFour: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepFour = true
        }
    }
    
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
//                        NavigationLink(destination: WelcomeView()) {
//                            RegisterButtonContent()
//                        }
                        Button(action: {
                            let registerController = RegisterController()
                            let registraUsuario = GuardarUsuarioAplicacionMovil()
                            let alert = ShowAlert()
                            let util = Utils()
                            var result : String = "0"
                            
                            if(name.isEmpty || lastName.isEmpty || email.isEmpty || password.isEmpty || rePass.isEmpty || pass.isEmpty || operationsKey.isEmpty || name.count == 0 || lastName.count == 0 || email.count == 0 || password.count == 0 || rePass.count == 0 || pass.count == 0 || operationsKey.count == 0 ){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                            }else if(!util.isValidEmail(testStr: email)){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("email_invalid", comment: ""))
                            }else if (password != rePass){
                               alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("toast_different_passwords", comment: ""))
                            }else if(pass.count < 4){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("pinInvalid", comment: ""))
                            }else if(operationsKey.count < 4){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("pinInvalid", comment: ""))
                            }else{
                                result = util.validatePassword(clave: password, confirmPassword: rePass)
//
                                if(result != "0"){
                                    alert.showPaymentModeActionSheet(title: "error", message: result)
                                }else{
                                    registraUsuario.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                                    registraUsuario.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                                    registraUsuario.cpUsuarioId = ""
                                    registraUsuario.cpNombre = name;
                                    registraUsuario.cpApellido = lastName;
                                    registraUsuario.cpCredencial = password;
                                    registraUsuario.cpEmail = email;
                                    registraUsuario.cpMovil = Constant.defaults.value(forKey: "Rphone") as! String //"584126157526";
                                    registraUsuario.cpFechaNacimiento = "21-03-2000";
                                    registraUsuario.cpDireccion = "APP_MOBILE";
                                    registraUsuario.cpPaisId = "1";
                                    registraUsuario.cpEstadoId = "1";
                                    registraUsuario.cpCiudadId = "1";
                                    registraUsuario.cpCondadoId = "1";
                                    registraUsuario.cpCodigoPostal = "1050";
                                    registraUsuario.cpCodigoValidacionMovil = "1234";
                                    registraUsuario.cpNombreImagen = "AloCash App Android";
                                    registraUsuario.cpImagenBytes = "null"
                                    registraUsuario.cpLink = "AloCash App Android";
                                    registraUsuario.cpPin = pass;
                                    print(Constant.defaults.value(forKey: "Rphone") as! String)
                                
                                    registerController.getGuardarUsuario(generarRegistro: registraUsuario) { (res,error) in
                                        print("EN LA VISTA CON EL REGISTRO!!!!")
                                        if res != nil  {
                                            print(res as Any)
        //                                    let registro: ObjectRegisterUser
        //                                    registro = res! as ObjectRegisterUser
        //                                    print(registro.envelope.body.registerMovilResponse._return.fechaHora)
                                            //print(registro.envelope.body.countryResponse._return.countries)
                                            //stepNex()
                                        }
                                        
                                        if error != nil {
                                            let alert = ShowAlert()
                                            alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                                            print(error!)
                                        }
                                    }
                                    stepNex()
                                }
                            }
                        }) {
                            RegisterButtonContent()
                        }
                        NavigationLink(destination: WelcomeView(), isActive:self.$stepFour){
                            EmptyView()
                        }
                        NavigationLink(destination: LoginView()) {
                            SignInLabel()
                        }
                        CondicionsLabel()
                            .frame(width: 360, height: 35)
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct NameTextField: View {
    @Binding var name: String
    var body: some View {
        FloatingLabelTextField($name, placeholder: NSLocalizedString("Name", comment: ""), editingChanged: { (isChanged) in
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
        FloatingLabelTextField($lastName, placeholder: NSLocalizedString("LastName", comment: ""), editingChanged: { (isChanged) in
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
        FloatingLabelTextField($email, placeholder: NSLocalizedString("Email", comment: ""), editingChanged: { (isChanged) in
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
        FloatingLabelTextField($password, placeholder: NSLocalizedString("Pass", comment: ""), editingChanged: { (isChanged) in
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
        FloatingLabelTextField($rePass, placeholder: NSLocalizedString("ConfirmPass", comment: ""), editingChanged: { (isChanged) in
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
        FloatingLabelTextField($pass, placeholder: NSLocalizedString("4DigitPass", comment: ""), editingChanged: { (isChanged) in
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
        FloatingLabelTextField($operationsKey, placeholder: NSLocalizedString("OperationsKey", comment: ""), editingChanged: { (isChanged) in
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
        Text("PassMustBe")
            .font(.caption)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.fontOrangeColor)
            //.padding(.top,0)
    }
}

struct SignInLabel: View {
    var body: some View {
        Text("YouHaveAccount")
            .font(.caption)
            .foregroundColor(Color.fontOrangeColor)
            .padding(.top,0)
    }
}

struct CondicionsLabel: View {
    var body: some View {
        Text("TermsAndConditions")
            .font(.caption)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.fontOrangeColor)
            .padding(.top,0)
    }
}

struct RegisterButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("SignUp")
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
