//
//  SignUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/15/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI

import FloatingLabelTextFieldSwiftUI

struct SignUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SignUpViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct SignUpViewAccess: View {
    @State var country: String = ""
    @State var phone: String =  ""
    @State var code: String = ""
    @State var steptwo: Bool = false
    @State var isSheetOpened = false
    @State var selectedCountry = Country()
    @State var countries : [Country] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountry?
    //@State var code: String = ""

    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
        }
    }
    func getJSONCountry() {  //Cargando
        let loading = Loading()
        loading.loadindView()
        let registerController = RegisterController()
        let countryMovil = AL_GetCountries()
        
        registerController.getCountry(generarCodigoCountry: countryMovil) { (res,error) in
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
            self.selectedCountry = countries[0]
            self.phone = selectedCountry.code
            Constant.defaults.setValue(selectedCountry.code, forKey: "code")
            Constant.defaults.setValue(selectedCountry.id, forKey: "idCountryR")

            loading.loadingDismiss()
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
                    Spacer()
                    TextLabelCountry()
                    
                    Button(action: {
                        self.isSheetOpened.toggle()
                        
                    }) {
                        Text("\(selectedCountry.alternativeName3)")
                            //.fontWeight(.bold)
                            .foregroundColor(.gray)
                            .font(.callout)
                        
                            Spacer()
                            Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                                .resizable()
                                .frame(width: 13, height: 6, alignment: .bottomTrailing)
                                .foregroundColor(.gray)
                        
                        }.sheet(isPresented: self.$isSheetOpened) {
                            paisesR(countries: self.countries, phone: self.$phone, isSheetOpened: self.isSheetOpened, selectedCountry: self.$selectedCountry)
                        }
                        .padding(10)
                        .cornerRadius(10)
                        .clipShape(Rectangle())
                        .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
                  
                    
                    line


                
                    
                    PhoneRegisterTextField(phone: self.$phone)
                    
                    Button(action: {
                        let registerController = RegisterController()
                        let alert = ShowAlert()
                        let token = GenerarCodigoMovilSMS()
                        var valid = false
                        //var phoneaux = Constant.defaults.value(forKey: "Rphone") as? String ?? ""
                        
                        let util = Utils()
                        
                        
                        token.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                        token.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                        //token.cpMovil = "584126157526" // Constant.defaults.value(forKey: "Rphone") as! String

                        
                        print ("Telefono")
                        
                        if(phone.isEmpty || phone.count == 0){
                            alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("ValidationInvalidLong", comment: ""))
                        }else if (util.isOnlyNumbers(string: phone)){
                           
                            if(phone.count <= 11){
                                alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("InvalidPhone", comment: ""))
                            }else{
                            token.cpMovil =  phone.replacingOccurrences(of: "+", with: "", options: NSString.CompareOptions.literal, range: nil)
                            Constant.defaults.setValue(phone, forKey: "Rphone")
                                valid = true
                            }
                            
                        }
                            

                        if(valid){
                            //token.cpMovil = phone

                            Constant.defaults.setValue("123456", forKey: "token")
                            Constant.defaults.setValue(token.cpMovil, forKey: "Rphone")
                            stepNex()
                           /* registerController.getToken(dataToken: token) { (res,error) in
                                print("EN EL TOKEN!!!!")
                                if res != nil  {
                                    print(res as Any)
                                    let tokens: ObjectToken
                                    tokens = res! as ObjectToken
                                    print(tokens.envelope.body.tokenResponse._return.datosRespuesta)

                                    Constant.defaults.setValue(tokens.envelope.body.tokenResponse._return.datosRespuesta, forKey: "token")
                                    stepNex()
                                }

                                if error != nil {
                                    let alert = ShowAlert()
                                    alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                                   print(error!)
                                }
                            }*/
                        }
                    }) {
                        RegisterContinueButtonContent()
                    }
                    
                    NavigationLink(destination: PassByTokenView(), isActive:self.$steptwo){
                        EmptyView()
                    }
                
                    NavigationLink(destination: LoginView()) {
                        RegisterCancelButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }  .onAppear(
            perform: getJSONCountry
        )
    }
}



struct TextLabelSignUp: View {
    var body: some View {
        Text("SignUp")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelPhone: View {
    var body: some View {
        Text("EnterPhone")
            .font(.callout)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top,18)
    }
}

struct PhoneRegisterTextField: View {
    //@Binding var phone: String
    @Binding var phone: String
    @State var codePhone: String = ""
    
    var body: some View {
            FloatingLabelTextField($phone, placeholder: NSLocalizedString("EnterPhone", comment: ""), editingChanged: { (isChanged) in
            }) {
                Constant.defaults.setValue(phone, forKey: "Rphone")
            }
        
                .leftView({ // Add left view.
                    Image("")
                }).placeholderColor(Color.placeholderGrayColor)
                .font(.callout)
                .frame(height: 50)
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.bottom,0)
        }
    //}
}

struct RegisterContinueButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Continue")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,15)
    }
}


struct RegisterCancelButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Cancel")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom)
    }
}

var line: some View {
    VStack { Divider()
        .background(Color.fontBlackColor)
        .border(Color.black, width: 5) }
        .padding(.bottom,10)
        .frame(width: 380, alignment: .center)
}


struct paisesR: View {
    var countries : [Country]
    @Binding var phone : String
    var isSheetOpened : Bool
    @Binding var selectedCountry: Country
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countries, id: \.self) { index in
                    Button(action: {
                        self.phone = index.code
                        self.selectedCountry = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.code, forKey: "code")
                        Constant.defaults.setValue(index.id, forKey: "idCountryR")
                        print("codigo: "+index.code)
                        print("Id: " + index.id)
                    }) {
                        Text(index.alternativeName3)
                            .font(.callout)
                            .fontWeight(.bold)
                            .frame(width: 340, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct TextLabelCountry: View {
    @State var countries : [Country] = []
    @State var jsonCountry : ObjectCountry?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("SelectCountry")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
        }
    }
}

struct RowView: View {
    var countries : Country
    
    var body: some View {
        HStack (spacing: 15) {
            //Text(countries.envelope.body.countryResponse._return.countries.description)
            Text(countries.name)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
