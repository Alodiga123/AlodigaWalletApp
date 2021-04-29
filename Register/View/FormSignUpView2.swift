//
//  FormSignUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 13/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct FormSignUpView2: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    FormSignUpViewAccess2()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct FormSignUpViewAccess2: View {
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
                    PasswordTextField(password: self.$password)
                    RepeatPassTextField(rePass: self.$rePass)
                    PassTextField(pass: self.$pass)
                    OperationsKeyTextField(operationsKey: self.$operationsKey)
                    VStack{
                        PassInfLabel()
                            .frame(width: 360, height: 35)
                        Button(action: {
                            let registerController = RegisterController()
                            let registraUsuario = GuardarUsuarioAplicacionMovil()
                            let alert = ShowAlert()
                            let util = Utils()
                            var result : String = "0"
                            
                            if(password.isEmpty || rePass.isEmpty || pass.isEmpty || operationsKey.isEmpty || password.count == 0 || rePass.count == 0 || pass.count == 0 || operationsKey.count == 0 ){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
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
                                    registraUsuario.cpNombre = Constant.defaults.value(forKey: "nameR") as! String;
                                    registraUsuario.cpApellido = Constant.defaults.value(forKey: "lastNameR") as! String;
                                    registraUsuario.cpCredencial = "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";
                                    registraUsuario.cpEmail = Constant.defaults.value(forKey: "emailR") as! String;
                                    registraUsuario.cpMovil = Constant.defaults.value(forKey: "Rphone") as! String //"584126157526";
                                    registraUsuario.cpFechaNacimiento = "21-03-2000";
                                    registraUsuario.cpDireccion = "APP_MOBILE";
                                    registraUsuario.cpPaisId = "1";
                                    registraUsuario.cpEstadoId = "1";
                                    registraUsuario.cpCiudadId = "1";
                                    registraUsuario.cpCondadoId = "1";
                                    registraUsuario.cpCodigoPostal = "1050";
                                    registraUsuario.cpCodigoValidacionMovil = Constant.defaults.value(forKey: "token") as! String;
                                    registraUsuario.cpNombreImagen = "AloCash App Android";
                                    registraUsuario.cpImagenBytes = "null"
                                    registraUsuario.cpLink = "AloCash App Android";
                                    registraUsuario.cpPin = "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";
                                    // TODO: valores nuevos rellenar
                                    registraUsuario.cpNumeroDocumento = Constant.defaults.value(forKey: "numberDocumentR") as! String
                                    registraUsuario.cpTipoDocumentoId = Constant.defaults.value(forKey: "idDocumentR") as! String
                                    print(Constant.defaults.value(forKey: "Rphone") as! String)
                                
                                    registerController.getGuardarUsuario(generarRegistro: registraUsuario) { (res,error) in
                                        print("EN LA VISTA CON EL REGISTRO!!!!")
                                        if res != nil  {
                                            print(res as Any)
                                            let registro: ObjectRegisterUser
                                            registro = res! as ObjectRegisterUser
                                            print(registro.envelope.body.registerMovilResponse._return.fechaHora)
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

struct FormSignUpView2_Previews: PreviewProvider {
    static var previews: some View {
        FormSignUpView2()
    }
}
