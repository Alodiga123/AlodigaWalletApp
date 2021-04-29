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
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct FormSignUpViewAccess: View {
    @State var name: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var numberDocument: String = ""
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
                    DocumentByCountryTextField()
                    NumberDocumentField(numberDocument: self.$numberDocument)
                    VStack{
                        Button(action: {
                            let registerController = RegisterController()
                            let documentByCountry = AL_GetDocumentPersonTypeByCountry()
                            let alert = ShowAlert()
                            let util = Utils()
                            
                            if(name.isEmpty || lastName.isEmpty || email.isEmpty || name.count == 0 || lastName.count == 0 || email.count == 0 || numberDocument.isEmpty || numberDocument.count == 0){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                            }else if(!util.isValidEmail(testStr: email)){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("email_invalid", comment: ""))
                            }else{
                                
                                Constant.defaults.set(name, forKey: "nameR")
                                Constant.defaults.setValue(lastName, forKey: "lastNameR")
                                Constant.defaults.setValue(email, forKey: "emailR")
                                Constant.defaults.setValue(numberDocument, forKey: "numberDocumentR")
                                
                                print("Nombre: " + name)
                                print("apellido: " + lastName)
                                print("email: " + email)
                                
                                /*
                                documentByCountry.cpCountryId = "1"; //Constant.defaults.value(forKey: "idCountryR") as! String
                                documentByCountry.cpOriginAplicationId = "1";
                                
                                registerController.getDocumentPersonTypeByCountry(generarDocumentPersonType: documentByCountry){ (res,error) in
                                    if res != nil {
                                        print("+++++++++++ OBJETO +++++++++++++++++")
                                        print(res)
                                    }
                                    if error != nil {
                                        let alert = ShowAlert()
                                        alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                                        print(error!)
                                    }

                                    
                                 }*/
                            stepNex()
                            }
                        }) {
                            RegisterContinueButtonContent()
                        }
                        NavigationLink(destination: FormSignUpView2(), isActive:self.$stepFour){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            RegisterCancelButtonContent()
                        }
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

struct NumberDocumentField: View {
    @Binding var numberDocument: String
    var body: some View {
        FloatingLabelTextField($numberDocument, placeholder: NSLocalizedString("NumberDocument", comment: ""), editingChanged: { (isChanged) in
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


struct FormSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        FormSignUpView()
    }
}
