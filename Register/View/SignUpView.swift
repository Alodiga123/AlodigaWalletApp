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
    @State var phone: String = "58"
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
                    TextLabelPais()
                    //ListaPaises()
//                    if #available(iOS 14.0, *) {
//                        otraDePicker()
//                    } else {
//                        // Fallback on earlier versions
//                    }
                    //OtraListaDePaises()
                    //DropDown()
                    //CountryRegisterTextField(country: self.$country)
                    PhoneRegisterTextField(phone: self.$phone)
//                    NavigationLink(destination: PassByTokenView()) {
//                        RegisterContinueButtonContent()
//                    }

                    Button(action: {
                        let registerController = RegisterController()
                        let alert = ShowAlert()
                        let token = RU_GenerarCodigoMovilSMS()
                        
                        token.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
                        token.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
                        token.cpMovil = phone
                        
                        print (phone)
                        
                        if(phone.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EnterPhone", comment: ""))
                        }else{
                            registerController.getToken(dataToken: token) { (res,error) in
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
                            }
                        }
                    }) {
                        RegisterContinueButtonContent()
                    }
                    
                    NavigationLink(destination: PassByTokenView(), isActive:self.$steptwo){
                    //NavigationLink(destination: PassByTokenView()){
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
    var json : ObjectCountry? = nil
    //@Binding var code : String
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


struct CountryList: View {
    @State var isSheetOpened = false
    @State var selectedCountry = Country()
    @State var countries : [Country] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountry?
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                if (selectedCountry.code != nil){
                    separador = " - "
                }
                //if (selectedProduct.simbolo != nil){separador = " - " }
            }) {
                Text("\(selectedCountry.alternativeName3)")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                    Spacer()
                
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                }.frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
           
            .sheet(isPresented: self.$isSheetOpened) {
                paises(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountry: self.$selectedCountry)
                //paises(products: self.products, isSheetOpened: self.isSheetOpened, selectedProduct: self.$selectedProduct)
            }
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
                    }) {
                        Text(index.alternativeName3)
                    }
                }
            }
        }
    }
}

struct TextLabelPais: View {
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


struct ListaPaises: View {
    let co = Color.black.opacity(0.1)
    //var listCountries = ["VENEZUELA", "AFGANISTAN", "ALBANIA"]
    let registerController = RegisterController()
    //let pais = AL_GetCountries()
    
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
                .padding(.bottom,0)
            
           
            if #available(iOS 14.0, *) {
                DisclosureGroup("\(selectCountry)", isExpanded:$isExpanded){
                    VStack(alignment: .leading) {
                        //Picker(selection: $selectedCountry, label: Text("Pais")) {
                        //Picker("Pais", selection: $selectedCountry) {
                        Picker(selection: self.$selectCountry, label:Text("Pais")){

                        //ForEach(self.countries.sorted(by: >), id: \.self) { country in
                        //Picker(selection: $countries.indices, label: Text("Country")) {
                        //ForEach(self.countries.indices, id: \.self) { country in

                        ForEach(0..<countries.count, id: \.self) {country in
                          //  ForEach(0..<countries.count) {country in
                            Text(self.countries[country].alternativeName3)
                                .id(country)
                                .tag(country)
                                    .font(.callout)
                                    .frame(width: 300, alignment: .leading)
                                    .padding(.top,10)
                                    .padding(.bottom,5)
                                    .padding(.leading,0)
                                    .foregroundColor(.blue)
                            
                            //Constant.defaults.setValue(self.countries[country].code, forKey: "code")
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
                      }
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
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
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
        Section{
        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
            ForEach(0 ..< frameworks.count) {
               Text(self.frameworks[$0])
            }
         }
        }
         Text("Your favorite framework: \(frameworks[selectedFrameworkIndex])")
      }.padding()
   }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
