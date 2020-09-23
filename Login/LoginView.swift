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
                                    if(self.devicemodel == ((Cconstant.IsModeSimulator) ?  Cconstant.SIMULATOR + Cconstant.MODEL_IPHONE_8: Cconstant.MODEL_IPHONE_8)){
                                        
                                        TopImageAlodigaLogo().frame(width: 100, height: 100).padding(.top,-50).padding(.bottom,90)
                                        
                                    } else if(self.devicemodel == ((Cconstant.IsModeSimulator) ?  Cconstant.SIMULATOR + Cconstant.MODEL_IPHONE_SE_2_GENERATION: Cconstant.MODEL_IPHONE_SE_2_GENERATION)){
                                        
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
    func login(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isLoggedIn = true
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
                    self.login()
                }) {
                    LoginButtonContent()
                }
                NavigationLink(destination: MainViewLogged(), isActive:self.$isLoggedIn){
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
        Text("Registrate aqui")
            .font(.headline)
            .foregroundColor(Color.fontOrangeColor).frame(width: 130, height: 25, alignment: .leading).padding(.top,5).padding(.bottom,30)
    }
}

struct ForgotPassword: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Olvido su contraseña")
                .foregroundColor(Color.fontOrangeColor)
        }.frame(width: 380, alignment: .leading).padding(.leading,17)
    }
}

struct RegisterLabel: View {
    var body: some View {
        Text("No eres miembro todavía?")
            .padding(.leading)
            .font(.headline)
            .foregroundColor(Color.fontBlackColor).frame(width: 230, height: 25, alignment: .leading).padding(.top,5).padding(.bottom,30)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        FloatingLabelTextField($username, placeholder: "Correo electronico", editingChanged: { (isChanged) in
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
        
        Text("Iniciar sesión").font(.title).foregroundColor(Color.fontBlackColor)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environment(\.locale, .init(identifier: "en"))
    }
}


