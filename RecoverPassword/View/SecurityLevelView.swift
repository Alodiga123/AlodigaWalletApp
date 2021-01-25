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
            }.navigationBarTitle("RecoverPassword", displayMode: .inline)
        }
    }
}

struct SecurityLevelViewAccess: View {
    @State var pass: String = "1234"
    @State var repeatPass: String = "1234"
    @State var isLoggedIn: Bool = false
    @State var stepFour: Bool = false
    @State var isSucces: Bool = false

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
                            TextLabelRecuverPassword()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        TextLabelSecurity()
                        NewPassTextField1(pass: self.$pass)
                        RepeatNewPassTextField1(repeatPass: self.$repeatPass)
                        TextLabelRecoverPass1()
                        
                         Button(action: {
                            let util = Utils()
                            let alert = ShowAlert()
                            var result : String = "0"

                            if(pass.isEmpty || repeatPass.isEmpty || pass.count == 0 || repeatPass.count == 0){
                                alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("EmptyFields", comment: ""))
                             }else if (pass != repeatPass){
                                alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("toast_different_passwords", comment: ""))
                             }else{
                                result = util.validatePassword(clave: pass, confirmPassword: repeatPass)
                                
                                if(result != "0"){
                                    alert.showPaymentModeActionSheet(title: "error", message: result)
                                }else{
                                    let recoverController = RecoverController()
                                    let recoverPass = CambiarCredencialAplicacionMovilEmailOrPhone()
                                
                                    recoverPass.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                                    recoverPass.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                                    recoverPass.cpPhoneOrEmail = ""
                                    recoverPass.cpCredencial = "";

    //                                recoverController.getRecoverPass(cambiarCredencialAplicacionMovil: recoverPass) { (res,error) in
    //                                     print("EN LA VISTA CON EL CAMBIO DE CLAVE!!!!")
    //                                     if res != nil  {
    //                                         print(res as Any)
    //     //                                    let registro: ObjectRegisterUser
    //     //                                    registro = res! as ObjectRegisterUser
    //     //                                    print(registro.envelope.body.registerMovilResponse._return.fechaHora)
    //                                         //print(registro.envelope.body.countryResponse._return.countries)
    //                                         //stepNex()
    //                                     }
    //
    //                                     if error != nil {
    //                                         let alert = ShowAlert()
    //                                         alert.showPaymentModeActionSheet(title: "error", message: recoverController.getMessageError(code: error!))
    //                                         print(error!)
    //                                     }
    //                                 }
                                     stepNex()
                                    }
                                }
                            }) {
                                ContinueRecoButtonContent()
                         }
                         NavigationLink(destination: SuccesfulRecoverView(), isActive:self.$stepFour){
                             EmptyView()
                         }
                         
                        NavigationLink(destination: MainViewLogged()) {
                            CancelRecorButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(25)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    //}
}

struct TextLabelSecurity: View {
    var body: some View {
        Text("SecurityLevel")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 10)
            .padding()
    }
}

struct NewPassTextField1: View {
    @Binding var pass: String
    @State var progress : CGFloat = 0
    @State private var isPasswordShow: Bool = false
    let util = Utils()
    
    var body: some View {
        ProgressBar(progress: $progress)
        FloatingLabelTextField($pass, placeholder: NSLocalizedString("NewPassword", comment: ""), editingChanged: { (isChanged) in
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

struct RepeatNewPassTextField1: View {
    @Binding var repeatPass: String
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        FloatingLabelTextField($repeatPass, placeholder: NSLocalizedString("RepeatNewPass", comment: ""), editingChanged: { (isChanged) in
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

struct TextLabelRecoverPass1: View {
    var body: some View {
        Text("PassMustBe8")
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
