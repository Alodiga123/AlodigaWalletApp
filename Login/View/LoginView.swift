//
//  LoginView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/31/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI
import Foundation
import UIKit

struct LoginView: View {
    
    @State var orientation = UIDevice.current.orientation
    var devicemodel = UIDevice.modelName
    
    let orientationChanged = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
        .makeConnectable()
        .autoconnect()
    var body: some View {
        GeometryReader{ geo in
            if (UIDevice.current.userInterfaceIdiom == .pad){
                Color.screemWhiteColor
                NavigationView{
                    ZStack {
                        Color.screemWhiteColor
                        VStack {
                            Group {
                                if self.orientation.isLandscape  || UIDevice.current.orientation.isLandscape {
                                    //TopImageAlodigaLogo()
                                    BackgroundImageAlodiga()
                                    CardButtonViewAccess().frame(width: geo.size.width, height: geo.size.height/2.4)
                                    
                                } else {
                                    TopImageAlodigaLogo().padding(.bottom,40)
                                    BackgroundImageAlodiga()
                                    CardButtonViewAccess().frame(width: geo.size.width, height: geo.size.height/2.2)
                                }
                            }
                        }
                    }
                }.navigationViewStyle(StackNavigationViewStyle())
                    .padding(.leading, geo.size.width < geo.size.height ? 0.25 : 0)
            }else{
                
                //Usada para pintar la pantalla de los iphone
                
                NavigationView{
                    ZStack {
                        Color.screemWhiteColor
                        VStack {
                            Group {
                                if self.orientation.isLandscape  || UIDevice.current.orientation.isLandscape{
                                    TopImageAlodigaLogo()
                                    BackgroundImageAlodiga()
                                    CardButtonViewAccess().padding(.bottom,20).padding(.top,-100)
                                } else {
                                    if(self.devicemodel == ((Constant.IsModeSimulator) ?  Constant.SIMULATOR + Constant.MODEL_IPHONE_8: Constant.MODEL_IPHONE_8)){
                                        
                                        TopImageAlodigaLogo().frame(width: 100, height: 100).padding(.top,-50).padding(.bottom,90)
                                        
                                    } else if(self.devicemodel == ((Constant.IsModeSimulator) ?  Constant.SIMULATOR + Constant.MODEL_IPHONE_SE_2_GENERATION: Constant.MODEL_IPHONE_SE_2_GENERATION)){
                                        
                                        TopImageAlodigaLogo().frame(width: 100, height: 100).padding(.top,-70).padding(.bottom,60)
                                        
                                    }else{
                                        TopImageAlodigaLogo().padding(.top,-100)
                                    }
                                    BackgroundImageAlodiga()
                                    CardButtonViewAccess()
                                }
                            }.onReceive(self.orientationChanged) { _ in
                                self.orientation = UIDevice.current.orientation
                            }
                        }
                    }
                }
            }
        }
    }
}

struct TopImageAlodigaLogo: View {
    var devicemodel = UIDevice.modelName
    var body: some View {
        GeometryReader { geo in
            Image("logo_alodiga")
        }
    }
}

struct BackgroundImageAlodiga: View {
    var body: some View {
        GeometryReader { geo in
            Image("back_login")
                .resizable().padding(.top,-80).padding(.bottom
                    ,-20)
        }
    }
}

struct CardButtonViewAccess: View {
    @State var username: String = "kerwin2821@gmail.com"
    @State var password: String = "Alo.123-"
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    @State var isLoggedIn: Bool = false
    @State var isSecurityQuestion: Bool = false
    @State var HUD = false
    @State var progressValue: Float = 0.0

    func login(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isLoggedIn = true
        }
    }
    func securityQuestion(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isSecurityQuestion = true
        }
    }
    var body: some View{
        ZStack{
          
           
            VStack{
              
                Rectangle()
                    .frame(width:50, height: 6)
                    .cornerRadius(3.0)
                    .opacity(0.3)
                    .padding(.top,16)
                VStack(alignment: .leading) {
                    TextLabelBeginingSession1()
                    //if self.HUD{
                        //GeometryReader{_ in
                      //      ViewControllerProgress.Loader()
                        //}//.background(Color.white.opacity(10))
                   // }
                   // HUDProgressView(placeHolder: "Cargando", show: $HUD)
                }.padding(.leading,20).padding(.trailing,20)
                
              
                UsernameTextField(username: self.$username)
                PasswordSecureField(password: self.$password)
                
                NavigationLink(destination: RecoverPasswordView()){
                    ForgotPassword()
                }

                Button(action: {
                    
                    //Cargando
                    let loading = Loading()
                    loading.loadindView()
                    
                    
                    let loginController = LoginController()
                    let util = Utils()
                    
                    let alert2 = ShowAlert()

                    //TODO: FALTA validar la encriptacion de la clave
                    if(username.isEmpty || password.isEmpty){
                        alert2.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("enter_both_credentials", comment: ""))
                    }else if(!util.isValidEmail(testStr: username)){
                        alert2.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("email_invalid", comment: "") )
                    }else{
                    
                    let loginAplicacionMovil = LoginAplicacionMovil()
                    loginAplicacionMovil.cpMovil = username
                    loginAplicacionMovil.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                    loginAplicacionMovil.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                    loginAplicacionMovil.cpIp = "192.168.3.20"
                    loginAplicacionMovil.cpEmail = username
                    //Falta desencriptar
                    loginAplicacionMovil.cpCredencial = "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"
                        
                    loginController.getLogin(dataUser: loginAplicacionMovil) { (res,error) in
                        if res != nil  {
                            //print(res as Any)
                            let login: ObjectLogin
                            login = res! as ObjectLogin
                            
                            if(login.envelope.body.aplicacionMovilResponse._return.codigoRespuesta == "00" || login.envelope.body.aplicacionMovilResponse._return.codigoRespuesta == "0" ){
                                
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.usuarioID, forKey: "usuarioID")
                                
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.email, forKey: "emailUser")
                                
                                //defaults.set(login, forKey: "ObjectLogin")
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.cumplimient, forKey: "cumplimient")

                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.prepayCardAsociate, forKey: "prepayCardAsociate")
                                
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.prepayCard, forKey: "prepayCard")
                                
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.cuenta?.numeroCuenta, forKey: "numeroCuenta")
                                
                                
                                if(Constant.defaults.bool(forKey: "prepayCard")){
                                    Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.numberCard, forKey: "numberCard")
                                }
                                
                                Constant.defaults.setValue(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.nombre! + " " + login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.apellido!, forKey: "user")
                                
                                Constant.defaults.setValue(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.email, forKey: "email")
                                
                                Constant.defaults.setValue(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.movil, forKey: "movil")
                                
                                let util = Utils()
                                util.updateProductsIninitial(products: login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos!)

                                
                                loading.loadingDismiss()
                                self.login()
                            }else if(login.envelope.body.aplicacionMovilResponse._return.codigoRespuesta == "12"){
                                
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.usuarioID, forKey: "usuarioID")
                                
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.email, forKey: "emailUser")
                                
                                Constant.defaults.set("4", forKey: "cumplimient")
                                Constant.defaults.set(false, forKey: "prepayCardAsociate")
                                Constant.defaults.set(false, forKey: "prepayCard")
                                
                                Constant.defaults.setValue(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.nombre! + " " + login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.apellido!, forKey: "user")
                                
                                Constant.defaults.setValue(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.email, forKey: "email")
                                
                                Constant.defaults.setValue(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.movil, forKey: "movil")

                                loading.loadingDismiss()
                                self.securityQuestion()
                            }
                        }
                        
                        if error != nil {
                          
                            loading.loadingDismiss()
                
                            alert2.showPaymentModeActionSheet(title: "error", message: loginController.getMessageErrorLogin(code: error!))
                            print(error!)
                        }
                    }
                }
    
                }) {
                    LoginButtonContent()
                }
                NavigationLink(destination: MainViewLogged(), isActive:self.$isLoggedIn){
                    EmptyView()
                }
                NavigationLink(destination: SecurityQuestionsView(), isActive:self.$isSecurityQuestion){
                    EmptyView()
                }
                HStack{
                    RegisterLabel()
                    NavigationLink(destination: SignUpView()){
                        ValueRegister()
                    }
                }
                .padding()
                Spacer()
            }.background(Color.cardButtonViewGray)
            .cornerRadius(20)
            .shadow(radius: 20).padding(.bottom,-20)
        }
    }
}

struct ValueRegister: View {
    var body: some View {
        Text("SignUpHere")
            .font(.headline)
            .foregroundColor(Color.fontOrangeColor).frame(width: 130, height: 25, alignment: .leading).padding(.top,5).padding(.bottom,30)
    }
}

struct ForgotPassword: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("ForgotPassword")
                .foregroundColor(Color.fontOrangeColor)
        }.frame(width: 380, alignment: .leading).padding(.leading,17)
    }
}

struct RegisterLabel: View {
    var body: some View {
        Text("NotMember")
            .padding(.leading)
            .font(.headline)
            .foregroundColor(Color.fontBlackColor).frame(width: 230, height: 25, alignment: .leading).padding(.top,5).padding(.bottom,30)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        FloatingLabelTextField($username, placeholder: "Correo electrónico", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("email")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50).padding(.leading,20).padding(.trailing,20).padding(.top).padding(.bottom,0)
    }
}




struct LoginButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Continue")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,18)
    }
}


struct PasswordSecureField: View {
    @Binding var password: String
    @State private var isPasswordShow: Bool = false
    var body: some View {
        FloatingLabelTextField($password, placeholder: "Contraseña", editingChanged: { (isChanged) in
            
        }) {
        }
        .isSecureTextEntry(!self.isPasswordShow)
            .leftView({ // Add left view.
                Image("password")
            }).placeholderColor(Color.placeholderGrayColor)
            .rightView({ // Add right view.
                Button(action: {
                    withAnimation {
                        self.isPasswordShow.toggle()
                    }
                    
                }) {
                    Image(self.isPasswordShow ? "eye" : "eye").foregroundColor(Color.gray)
                }
            })
            .frame(height: 50).padding(.leading,20).padding(.trailing,20).padding(.top,0).padding(.bottom,0)
    }
}


struct TextLabelBeginingSession1: View {
    var body: some View {
        
        //Comentario gitHub
        
        Text("LogIn").font(.title).foregroundColor(Color.fontBlackColor)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environment(\.locale, .init(identifier: "en"))
    }
}


