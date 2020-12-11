//
//  ChangePasswordView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 27/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI


struct ProgressBar: View {
    @Binding var progress: CGFloat
    @State var isShowing = false
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color.gray)
                .opacity(0.3)
                .frame(width: 345.0, height: 8.0)
            Rectangle()
                .foregroundColor(Color.fontOrangeColor)
                .frame(width: 345.0 * (self.progress / 100.0), height: 8.0)
        }
        .onAppear {
            self.isShowing = true
        }
        .cornerRadius(4.0)
    }
}

struct ChangePasswordView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ChangePasswordViewAccess()
                }
            }.navigationBarTitle("ChangePass", displayMode: .inline)
        }
    }
}

struct ChangePasswordViewAccess: View {
    @State var pass: String = ""
    @State var repeatPass: String = ""
    @State var isLoggedIn: Bool = false
    @State var stepFour: Bool = false
    @State var isSucces: Bool = false
    @State var progress = false

    func isSuccesIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isSucces = true
        }
    }
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepFour = true
        }
    }
    
    var body: some View {
        //ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelChangePassword()
                         
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        
                       
                        TextLabelSecurityChangePass()
                     
                        NewPassTextField(pass: self.$pass)
                        RepeatNewPassTextField(repeatPass: self.$repeatPass)
                        TextLabelRecoverPass()
                        if self.progress{
                            GeometryReader{_ in
                                Loader()
                            }.background(Color.white.opacity(10))
                        }
                            Button(action: {
                                
                                let util = Utils()
                                let alert = ShowAlert()
                                var result : String = "0"

                                if(pass != ""){
                                result = util.validatePassword(clave: pass, confirmPassword: repeatPass)
                                }
                                else{
                                    alert.showPaymentModeActionSheet(title: "error", message:  NSLocalizedString("EmptyFields", comment: ""))
                                }
                                
                                if(result != "0"){
                                    alert.showPaymentModeActionSheet(title: "error", message: result)
                                }else if(repeatPass == ""){
                                    self.progress.toggle()

                                    alert.showPaymentModeActionSheet(title: "error", message:  NSLocalizedString("EmptyFields", comment: ""))
                                }else if(pass != repeatPass)
                                {

                                    alert.showPaymentModeActionSheet(title: "error", message:                                      NSLocalizedString("toast_different_passwords", comment: ""))
                                }else{
                                    self.progress.toggle()

                                    let changePasswordController = ChangePasswordController()
                                    
                                    changePasswordController.cambiarCredencialAplicacionMovil(credencial: pass, userId: Constant.defaults.value(forKey: "usuarioID") as! String) { (data, error) in
                                        
                                        if(data != ""){
                                            self.progress.toggle()
                                            self.isSuccesIn()
                                        }
                                        
                                        if error != nil {
                                            self.progress.toggle()
                                            let alert = ShowAlert()
                                            alert.showPaymentModeActionSheet(title: "error", message: "ERROR")
                                            //alert.showPaymentModeActionSheet(title: "error", message: loginController.getMessageErrorLogin(code: error!))
                                            print(error!)
                                        }
                                        
                                       // self.progress.toggle()


                                    }
                                    
                                }
                                
                                //self.progress.toggle()
                                
                            }) {
                                ChangeButtonContent()
                            }.padding(3)
                            
                            
                        NavigationLink(destination: SuccessfulChangeView(), isActive:self.$isSucces){
                                EmptyView()
                            }
                            
                            
                    
                        NavigationLink(destination: MainViewLogged()) {
                            ChangeBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    //}
}

struct TextLabelChangePassword: View {
    var body: some View {
        Text("ChangePass").font(.title).foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelSecurityChangePass: View {
    var body: some View {
        Text("SecurityLevel")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 10)
            .padding()
    }
}


struct NewPassTextField: View {
    @Binding var pass: String
    @State var progress : CGFloat = 0
    @State private var isPasswordShow: Bool = false
    let util = Utils()
    
    var body: some View {
        ProgressBar(progress: $progress)
        FloatingLabelTextField($pass, placeholder: "Nueva contraseña", editingChanged: { (isChanged) in
            progress = util.getNivelProgressBar(clave: pass)
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
    
    func setProgress() {
        progress = util.getNivelProgressBar(clave: pass)
    }
}



struct RepeatNewPassTextField: View {
    @Binding var repeatPass: String
    @State private var isPasswordShow: Bool = false
    var body: some View {
        FloatingLabelTextField($repeatPass, placeholder: "Repita la nueva contraseña", editingChanged: { (isChanged) in
            
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


struct TextLabelRecoverPass: View {
    var body: some View {
        Text("PassHelp")
            .font(.caption)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 340, height: 60, alignment: .leading)
            .padding(.top,0)
            .padding(.bottom,0)
    }
}

struct ChangeButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Change")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ChangeBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,5)
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
