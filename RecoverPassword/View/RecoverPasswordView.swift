//
//  RecoverPasswordView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/23/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI
import Foundation
import UIKit

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
            }.navigationBarTitle("RecoverPassword", displayMode: .inline)
        }
    }
}

struct RecoverPasswordViewAccess: View {
    @State var email: String = "no@posee.com"
    @State var isLoggedIn: Bool = false
    @State var steptwo: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
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
                        TextLabelRecover()
                        EmailRecorTextField(email: self.$email)
                        
                        Button(action: {
                            let recoverController = RecoverController()
                            let alert = ShowAlert()
                            let tokenAplication = GenerarCodigoMovilSMSAplicacionMovil()

                            tokenAplication.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                            tokenAplication.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                            tokenAplication.cpEmail = email
                            tokenAplication.cpMovil = " "

                            print (email)
                            //Constant.defaults.setValue("123456", forKey: "tokenAplication")
                            stepNex()

                            if(email.isEmpty){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EnterPhone", comment: ""))
                            }else{
                                //Constant.defaults.setValue("123456", forKey: "token")
                                stepNex()


                                recoverController.getTokenAplication(dataTokenApli: tokenAplication) { (res,error) in
                                    print("EN EL TOKEN DE LA APLICACION!!!!")
                                    if res != nil  {
                                        print(res as Any)
                                        let tokenApli: ObjectTokenAplication
                                        tokenApli = res! as ObjectTokenAplication
                                        print(tokenApli.envelope.body.tokenResponse._return.datosRespuesta)

                                        //Constant.defaults.setValue(tokens.envelope.body.tokenResponse._return.datosRespuesta, forKey: "token")
                                        stepNex()
                                    }

                                    if error != nil {
                                        let alert = ShowAlert()
                                        alert.showPaymentModeActionSheet(title: "error", message: recoverController.getMessageError(code: error!))
                                        print(error!)
                                    }
                                    stepNex()
                                }
                            }
                        }) {
                            ContinueRecoButtonContent()
                        }
                        NavigationLink(destination: RecoverPasswordByTokenView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            CancelRecorButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
   // }
}

struct TextLabelRecover: View {
    var body: some View {
        Text("EmailRegister")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 45)
            .padding()
    }
}

struct EmailRecorTextField: View {
    @Binding var email: String
    @State private var isValidEmail: Bool = false
    
    var body: some View {
        
//        TextField("Correo Electrónico", text: self.$email)
//            //.font(.system(size: geometry.size.width/24))
//            .textFieldStyle(PlainTextFieldStyle())
//            .padding([.leading, .trailing], 6)
//            .frame(height: 50)
//            //.frame(width: geometry.size.width*0.75, height: geometry.size.width/20)
//            .background(
//                RoundedRectangle(cornerRadius: 8)
//                    .fill(Color.init(white: 0.28))
//            )
        FloatingLabelTextField($email, placeholder: "Correo Electrónico", editingChanged: { (isChanged) in

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

struct ContinueRecoButtonContent2: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Continue")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct CancelRecorButtonContent2: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Cancel")
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
