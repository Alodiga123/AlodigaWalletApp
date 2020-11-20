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
//    @State var stepFour: Bool = false
//
//    func stepNex(){
//        DispatchQueue.main.asyncAfter(deadline: .now() ){
//            self.stepFour = true
//        }
//    }
    
    var body: some View {
        ScrollView{
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
                        TextLabelSecurity2()
                        NewPassTextField21(pass: self.$pass)
                        RepeatNewPassTextField2(repeatPass: self.$repeatPass)
                        TextLabelRecoverPass2()
                        
//                         Button(action: {
//                             let recoverController = RecoverController()
//                             let recoverPass = CambiarCredencialAplicacionMovilEmailOrPhone()
//                             let alert = ShowAlert()
//
//                             if(pass.isEmpty || repeatPass.isEmpty){
//                                 alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
//                             }else if (pass !=  repeatPass){
//                                 alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("KeyNotMatch", comment: ""))
//                             }else{
//                                recoverPass.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
//                                recoverPass.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
//                                recoverPass.cpPhoneOrEmail = ""
//                                recoverPass.cpCredencial = "";
//
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
//                                 stepNex()
//                             }
//                         }) {
//                            ContinueRecoButtonContent()
//                         }
//                         NavigationLink(destination: SuccesfulRecoverView(), isActive:self.$stepFour){
//                             EmptyView()
//                         }
                         
                        NavigationLink(destination: MainViewLogged()) {
                            CancelRecorButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelSecurity2: View {
    var body: some View {
        Text("SecurityLevel")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 10)
            .padding()
    }
}

struct NewPassTextField21: View {
    @Binding var pass: String
    var body: some View {
        FloatingLabelTextField($pass, placeholder: "Nueva contraseña", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct RepeatNewPassTextField2: View {
    @Binding var repeatPass: String
    var body: some View {
        FloatingLabelTextField($repeatPass, placeholder: "Repita la nueva contraseña", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct TextLabelRecoverPass2: View {
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
