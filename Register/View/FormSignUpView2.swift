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
    @State private var checked = false
    
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
                    TextLabelSecurity()
                    PasswordTextField(pass: self.$password)
                    RepeatPassTextField(rePass: self.$rePass)
                    //PassTextField(pass: self.$pass)
                    OperationsKeyTextField(operationsKey: self.$operationsKey)
                    
                    HStack {
                        CheckBoxView(checked: $checked)
                        Spacer()
                        Text("TermsAndConditions").font(.caption)
                           .multilineTextAlignment(.leading)
                           .foregroundColor(Color.fontOrangeColor)
                           .padding(.top,0)
                    }.frame(width: 340, height: 60)
                  /*  Button(action: {
                             // do when checked / unchecked
                             //...
                     }) {
                         HStack(alignment: .top, spacing: 10) {

                             Rectangle()
                                 .fill(Color.white)
                                 .frame(width:20, height:20, alignment: .center)
                                 .cornerRadius(5)
                             Text("TermsAndConditions").font(.caption)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.fontOrangeColor)
                                .padding(.top,0)
                         }
                     }*/
                    //SignInLabel()
                    VStack{
                        //PassInfLabel()
                         //  .frame(width: 360, height: 35)
                        Button(action: {
                            let registerController = RegisterController()
                            let registraUsuario = GuardarUsuarioAplicacionMovil()
                            let alert = ShowAlert()
                            let util = Utils()
                            var result : String = "0"
                            let loading = Loading()
                            loading.loadindView()
                            
                            if(password.isEmpty || rePass.isEmpty ||  operationsKey.isEmpty || password.count == 0 || rePass.count == 0 || operationsKey.count == 0 ){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                            }else if (password != rePass){
                               alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("toast_different_passwords", comment: ""))
                            }else if(operationsKey.count < 4){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("pinInvalid", comment: ""))
                            }else if(!checked){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("acept_ter", comment: ""))
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
                                    registraUsuario.cpCredencial = password
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
                                    registraUsuario.cpPin = operationsKey
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
                                            loading.loadingDismiss()

                                            stepNex()
                                        }
                                        
                                        if error != nil {
                                            let alert = ShowAlert()
                                            alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                                            print(error!)
                                            loading.loadingDismiss()

                                        }
                                    }
                                    
                                   // stepNex()
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
                        //NavigationLink(destination: LoginView()) {
                            
                        //}
                        //CondicionsLabel()
                            .frame(width: 360, height: 35)
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}



struct PasswordTextField: View {
    @Binding var pass: String
    @State var progress : CGFloat = 0
    @State private var isPasswordShow: Bool = false
    let util = Utils()
    
    var body: some View {
        ProgressBar(progress: $progress)
        FloatingLabelTextField($pass, placeholder: NSLocalizedString("Pass", comment: ""), editingChanged: { (isChanged) in
            progress = util.getNivelProgressBar(clave: pass)
        }) {
        }
        .isSecureTextEntry(!self.isPasswordShow)
        .rightView({ // Add right view.
            Button(action: {
                withAnimation {
                    self.isPasswordShow.toggle()
                }
                
            }) {
                Image(self.isPasswordShow ? "eye" : "eye").foregroundColor(Color.gray)
            }
        })
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top,0)
        .padding(.bottom,0)
    }
    func setProgress() {
        progress = util.getNivelProgressBar(clave: pass)
    }
}

struct PasswordTextFieldjhkj: View {
    @Binding var password: String
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        FloatingLabelTextField($password, placeholder: NSLocalizedString("Pass", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .isSecureTextEntry(!self.isPasswordShow)
        .rightView({ // Add right view.
            Button(action: {
                withAnimation {
                    self.isPasswordShow.toggle()
                }
                
            }) {
                Image(self.isPasswordShow ? "eye" : "eye").foregroundColor(Color.gray)
            }
        })
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top,0)
        .padding(.bottom,0)
    }
    
}

struct RepeatPassTextField: View {
    @Binding var rePass: String
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        FloatingLabelTextField($rePass, placeholder: NSLocalizedString("ConfirmPass", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .isSecureTextEntry(!self.isPasswordShow)
        .rightView({ // Add right view.
            Button(action: {
                withAnimation {
                    self.isPasswordShow.toggle()
                }
                
            }) {
                Image(self.isPasswordShow ? "eye" : "eye").foregroundColor(Color.gray)
            }
        })
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top,0)
        .padding(.bottom,0)
    }
}

struct PassTextField: View {
    @Binding var pass: String
    
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        FloatingLabelTextField($pass, placeholder: NSLocalizedString("4DigitPass", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .isSecureTextEntry(!self.isPasswordShow)
        .rightView({ // Add right view.
            Button(action: {
                withAnimation {
                    self.isPasswordShow.toggle()
                }
                
            }) {
                Image(self.isPasswordShow ? "eye" : "eye").foregroundColor(Color.gray)
            }
        })
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top,0)
        .padding(.bottom,0)
    }

    
}

struct OperationsKeyTextField: View {
    @Binding var operationsKey: String
    
    
    
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        FloatingLabelTextField($operationsKey, placeholder: NSLocalizedString("OperationsKey", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .isSecureTextEntry(!self.isPasswordShow)
        .rightView({ // Add right view.
            Button(action: {
                withAnimation {
                    self.isPasswordShow.toggle()
                }
                
            }) {
                Image(self.isPasswordShow ? "eye" : "eye").foregroundColor(Color.gray)
            }
        })
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top,0)
        .padding(.bottom,0)
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

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            
            CheckBoxView(checked: $checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
