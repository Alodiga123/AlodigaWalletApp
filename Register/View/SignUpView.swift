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
            }.navigationBarTitle("Register", displayMode: .inline)
        }
    }
}

struct SignUpViewAccess: View {
    @State var country: String = ""
    @State var phone: String = "" //Constant.defaults.object(forKey: "code") as! String
    @State var code: String = ""
    @State var steptwo: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
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
                    //PhoneRegisterTextField(phone: self.$phone)
                    Button(action: {
                        let registerController = RegisterController()
                        let alert = ShowAlert()
                        let token = RU_GenerarCodigoMovilSMS()
                        
                        token.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                        token.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                        token.cpMovil = phone
                        
                        print (phone)
                        
//                        if(phone.isEmpty){
//                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EnterPhone", comment: ""))
//                        }else{
                            Constant.defaults.setValue("123456", forKey: "token")
                            stepNex()
//                            registerController.getToken(dataToken: token) { (res,error) in
//                                print("EN EL TOKEN!!!!")
//                                if res != nil  {
//                                    print(res as Any)
//                                    let tokens: ObjectToken
//                                    tokens = res! as ObjectToken
//                                    print(tokens.envelope.body.tokenResponse._return.datosRespuesta)
//
//                                    Constant.defaults.setValue(tokens.envelope.body.tokenResponse._return.datosRespuesta, forKey: "token")
//                                    stepNex()
//                                }
//
//                                if error != nil {
//                                    let alert = ShowAlert()
//                                    alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
//                                    print(error!)
//                                }
//                            }
                        //}
                    }) {
                        RegisterContinueButtonContent()
                    }
                    
                    NavigationLink(destination: PassByTokenView(), isActive:self.$steptwo){
                        EmptyView()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        RegisterCancelButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
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
            FloatingLabelTextField($phone, placeholder: "Ingrese el número de Teléfono", editingChanged: { (isChanged) in
            }) {
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


struct CountryList: View {
    @State var isSheetOpened = false
    @State var selectedCountry = Country()
    @State var countries : [Country] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountry?
    @State var code: String = ""
    var body: some View {
        VStack {
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
                
                }.padding(10)
                .cornerRadius(10)
                .clipShape(Rectangle())
                .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
            .sheet(isPresented: self.$isSheetOpened) {
                paises(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountry: self.$selectedCountry)
            }
              PhoneRegisterTextField(phone: $selectedCountry.code)
        }.onAppear(
            perform: getJSONCountry
        )
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let countryMovil = AL_GetCountries()
        
        registerController.getCountry(generarCodigoCountry: countryMovil) { (res,error) in
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
        }
    }
}

struct paises: View {
    var countries : [Country]
    var isSheetOpened : Bool
    @Binding var selectedCountry: Country
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countries, id: \.self) { index in
                    Button(action: {
                        self.selectedCountry = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.code, forKey: "code")
                        Constant.defaults.setValue(index.id, forKey: "idCountry")
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
            CountryList()
        }
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let countryMovil = AL_GetCountries()
        
        registerController.getCountry(generarCodigoCountry: countryMovil) { (res,error) in
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
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
