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
    @State var username: String = ""
    @State var password: String = ""
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    @State var isLoggedIn: Bool = false
    @State var isSecurityQuestion: Bool = false

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
                }.padding(.leading,20).padding(.trailing,20)
                UsernameTextField(username: self.$username)
                PasswordSecureField(password: self.$password)
                
                NavigationLink(destination: RecoverPasswordView()){
                    ForgotPassword()
                }
                Button(action: {
                    let loginController = LoginController()
                    let alert = ShowAlert()

                    //FALTA validar la encriptacion de la clave
                    if(username.isEmpty || password.isEmpty){
                        alert.showPaymentModeActionSheet(title: "error", message: "enter_both_credentials")
                    }else if(!loginController.isValidEmail(testStr: username)){
                        alert.showPaymentModeActionSheet(title: "error", message: "email_invalid")
                    }else{
                    
                    let loginAplicacionMovil = LoginAplicacionMovil()
                    loginAplicacionMovil.cpMovil = username
                    loginAplicacionMovil.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                    loginAplicacionMovil.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                    loginAplicacionMovil.cpIp = "192.168.3.20"
                    loginAplicacionMovil.cpEmail = username
                    //Falta desencriptar
                    loginAplicacionMovil.cpCredencial = password
                    loginController.getLogin(dataUser: loginAplicacionMovil) { (res,error) in
                        if res != nil  {
                            //print(res as Any)
                            let login: ObjectLogin
                            login = res! as ObjectLogin
                            
                            if(login.envelope.body.aplicacionMovilResponse._return.codigoRespuesta == "00" || login.envelope.body.aplicacionMovilResponse._return.codigoRespuesta == "0" ){
                                
                                //defaults.set(login, forKey: "ObjectLogin")
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.cumplimient, forKey: "cumplimient")

                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.prepayCardAsociate, forKey: "prepayCardAsociate")
                                Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.prepayCard, forKey: "prepayCard")
                                
                                if(Constant.defaults.bool(forKey: "prepayCard")){
                                    Constant.defaults.set(login.envelope.body.aplicacionMovilResponse._return.datosRespuesta.numberCard, forKey: "numberCard")
                                }
                                
                                self.login()
                            }else if(login.envelope.body.aplicacionMovilResponse._return.codigoRespuesta == "12"){
                                Constant.defaults.set("4", forKey: "cumplimient")
                                Constant.defaults.set(false, forKey: "prepayCardAsociate")
                                Constant.defaults.set(false, forKey: "prepayCard")
                                self.securityQuestion()
                            }
                        }
                        
                        if error != nil {
                            let alert = ShowAlert()
                            alert.showPaymentModeActionSheet(title: "error", message: loginController.getMessageErrorLogin(code: error!))
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
                NavigationLink(destination: securityQuestionView(), isActive:self.$isSecurityQuestion){
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


