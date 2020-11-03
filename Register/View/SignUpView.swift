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
    @State var phone: String = ""
    @State var isLoggedIn: Bool = false
    
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
//                    paises { paises in
//
//                    }
                    ListaPaises()
                    if #available(iOS 14.0, *) {
                        otraDePicker()
                    } else {
                        // Fallback on earlier versions
                    }
                    //OtraListaDePaises()
                    ////DropDown()
                    ////CountryRegisterTextField(country: self.$country)
                    PhoneRegisterTextField(phone: self.$phone)
                    NavigationLink(destination: PassByTokenView()) {
                        RegisterContinueButtonContent()
                    }
                    Button(action: {
                        
                        let registerController = RegisterController()
                        let pais = AL_GetCountries()
                        let registro = GuardarUsuarioAplicacionMovil()
                        let loginController = LoginController()
                        
                        registerController.getCountry(generarCodigoCountry: pais) { (res,error) in
                            print("EN LA VISTA!!!!")
                            if res != nil  {
                                print(res as Any)
                                let country: ObjectCountry
                                country = res! as ObjectCountry
                                print(country.envelope.body.countryResponse._return.countries)
                            }

                            if error != nil {
                                print("EN EL ERROR!!!!")
                                print(error!)
                            }
                        }
                       
                        registerController.getGuardarUsuario(generarRegistro: registro){ (res,error) in
                            print("EN LA VISTA CON EL REGISTRO!!!!")
                            if res != nil  {
                                print(res as Any)
                                let registro: ObjectRegisterUser
                                registro = res! as ObjectRegisterUser
                                print(registro.envelope.body.registerMovilResponse._return.fechaHora)
                                //print(registro.envelope.body.countryResponse._return.countries)
                            }
                            
                            if error != nil {
                                print("EN EL ERROR!!!!")
                                loginController.getMessageErrorLogin(code: error!)
                                print(error!)
                            }
                        }
                        
                    }) {
                        RegisterContinueButtonContent()
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

//class prueba {
    func paises (completion: @escaping ([Country]) -> Void) {
        let registerController = RegisterController()
        let pais = AL_GetCountries()
        //let pa: [Country]
        
            registerController.getCountry(generarCodigoCountry: pais) { (res,error) in
                print("EN LA VISTA!!!!")
                if res != nil  {
                    print(res as Any)
                    let country: ObjectCountry
                    country = res! as ObjectCountry
                    let pa: [Country]
                    pa = country.envelope.body.countryResponse._return.countries as Array<Country>
                    completion (pa)
                }
                
        //        if error != nil {
        //            print("EN EL ERROR!!!!")
        //            print(error!)
        //        }
            }
    }
//}

struct TextLabelSignUp: View {
    var body: some View {
        Text("SignUp")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelCountry: View {
    var body: some View {
        Text("SelectCountry")
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top,20)
    }
}

struct TextLabelPhone: View {
    var body: some View {
        Text("EnterPhone")
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top,18)
    }
}


struct CountryRegisterTextField: View {
    @Binding var country: String
    var body: some View {
        FloatingLabelTextField($country, placeholder: "Seleccione el Pais", editingChanged: { (isChanged) in
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

struct PhoneRegisterTextField: View {
    @Binding var phone: String
    var body: some View {
        FloatingLabelTextField($phone, placeholder: "Ingrese el número de Teléfono", editingChanged: { (isChanged) in
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

struct ListaPaises: View {
    let co = Color.black.opacity(0.1)
    //var listCountries = ["VENEZUELA", "AFGANISTAN", "ALBANIA"]
    let registerController = RegisterController()
    let pais = AL_GetCountries()
    
    @State var countries : [Country] = []
    @State var jsonCountry : ObjectCountry?
    @State var searchText = ""
    @State private var isExpanded = false
    @State private var selectCountry = "Pais"
    
    @State private var selectedCountry: Int = 0
    var body: some View {
        Color.blue
            .edgesIgnoringSafeArea(.all)
        
        VStack(alignment: .leading){
            Text("Seleccione el Pais")
            //Text($countries)
                .font(.callout)
                .foregroundColor(.gray)
                .padding(.top,10)
            if #available(iOS 14.0, *) {
                DisclosureGroup("\(selectCountry)", isExpanded:$isExpanded){
                    VStack(alignment: .leading) {
                        //Picker(selection: $selectedCountry, label: Text("Pais")) {
                        //Picker("Pais", selection: $selectedCountry) {
                        //Picker(selection: $selectCountry, label:Text("Pais")){
                        //ForEach(self.countries, id: \.self) { country in
                        ForEach(0..<countries.count, id: \.self) {country in
                                Text(self.countries[country].alternativeName3)
                                    .font(.callout)
                                    .frame(width: 300, alignment: .leading)
                                    .padding(.top,10)
                                    .padding(.bottom,5)
                                    .padding(.leading,0)
                                    .foregroundColor(.blue)
                            //ForEach(countries, id: \.self) { countries in
                            //ForEach(0 ..< listCountries.count) {_ in
                                //ForEach(1...3,id: \.self){num in
                                    //Text("\(num)")
                                //Text(countries[countries])
                                //litado(country: country)
                                 
    //                            Text(country.description)
    //                                .font(.callout)
    //                                .frame(width: 300, alignment: .leading)
    //                                .padding(.top,10)
    //                                .padding(.bottom,5)
    //                                .padding(.leading,0)
    //                                .foregroundColor(.blue)
    ////                                    .onTapGesture{
    ////                                        print (listCountries)
    ////                                        self.selectCountry = ("\(listCountries)")
    ////                                        withAnimation{
    ////                                            self.isExpanded.toggle()
    ////                                        }
    ////                                    }
                               // }
                            //
                                
                            }
                        //}
                    }
                }.accentColor(.white)
                .font(.callout)
                .foregroundColor(.blue)
                .padding(.all)
                .background(co)
                .cornerRadius(8)
            } else {
                // Fallback on earlier versions
            }
        }.padding(.all)
        .onAppear(
            perform: getJSONCountry
        )
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let countryMovil = AL_GetCountries()
        
        registerController.getCountry(generarCodigoCountry: countryMovil) { (res,error) in
            print("EN LA FUNCION!!!!")
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
            //self.countries = res!.envelope.body.countryResponse._return.countries
        }
    }
}

@available(iOS 14.0, *)
struct otraDePicker: View {
    var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]
    @State var objetResponseCountry: [Country] = []
    @State private var selectedFrameworkIndex = 0
    
    var body: some View {
        VStack  {
            if objetResponseCountry.isEmpty{
                OtraListaDePaises()
            }else{
                List(objetResponseCountry){countries in
                    RowView(countries: countries)
                }.listStyle(InsetGroupedListStyle())
            }
        }
        .onAppear () {
            
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




struct OtraListaDePaises: View {
   var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]
   @State private var selectedFrameworkIndex = 0
    
//    var body: some View {
//        //NavigationView {
//            Form {
//                Section {
//                    Picker(selection: $selectedFrameworkIndex, label: Text("Favorite Framework")) {
//                        ForEach(0 ..< frameworks.count) {
//                            Text(self.frameworks[$0])
//                        }
//                    }
//                }
//            }
//            .navigationBarTitle("Favorites")
//        }
//    }

   var body: some View {
      VStack {
        //Form{
        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
            ForEach(0 ..< frameworks.count) {
               Text(self.frameworks[$0])
            }
         }
       // }
         Text("Your favorite framework: \(frameworks[selectedFrameworkIndex])")
      }.padding()
   }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
