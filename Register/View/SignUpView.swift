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
            }.navigationBarTitle("Registro", displayMode: .inline)
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
                    //OtraListaDePaises()
                    //DropDown()
                    //CountryRegisterTextField(country: self.$country)
                    PhoneRegisterTextField(phone: self.$phone)
                    NavigationLink(destination: PassByTokenView()) {
                        RegisterContinueButtonContent()
                    }
                    Button(action: {
                        
                        let registerController = RegisterController()
                        let pais = AL_GetCountries()
                        
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

class prueba {

func paises (completion: @escaping ([Country]) -> Void) {
    let registerController = RegisterController()
    let pais = AL_GetCountries()
    let pa: [Country]
    
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
            //completion (pa)
            
    //        if error != nil {
    //            print("EN EL ERROR!!!!")
    //            print(error!)
    //        }
        }
}
}

struct TextLabelSignUp: View {
    var body: some View {
        Text("Registrate")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelCountry: View {
    var body: some View {
        Text("Seleccione el país")
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top,20)
    }
}

struct TextLabelPhone: View {
    var body: some View {
        Text("Ingrese el número de Teléfono")
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
        Text("Continuar")
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
        Text("Cancelar")
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
    let registerController = RegisterController()
    let pais = AL_GetCountries()
    let prueba2 = prueba()
//    init(){
//        prueba2.paises(completion: { co in
//                    print ("en listar paises")
//                    print(co)
//    }
//    let countries = {let prueba2 = prueba()
//        prueba2.paises(completion: { co in
//            print ("en listar paises")
//            print(co)
//    })}
//    prueba2.paises { countr in
//        Text("\(num)")
//    }
    
    @State private var isExpanded = false
    @State private var selectNumber = 1
    @State private var countries = {let prueba2 = prueba()
        prueba2.paises(completion: { co in
            print ("en listar paises")
            print(co)
    })}
    //@Binding var countries: String
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Seleccione el Pais")
            //Text($countries)
                .font(.callout)
                .foregroundColor(.gray)
                .padding(.top,18)
//                .onAppear{
//                    let prueba2 = prueba()
//                        prueba2.paises(completion: { co in
//                            print ("en listar paises")
//                            print(co)
//                        }}
                
            if #available(iOS 14.0, *) {
                DisclosureGroup("\(selectNumber)", isExpanded:$isExpanded){
                    VStack {
                        //Picker(selection: $selectNumber, label:Text("Pais")){
                            ForEach(1...3,id: \.self){num in
                                Text("\(num)")
                                    .font(.callout)
                                    .padding(.all)
                                    .onTapGesture{
                                        print (num)
                                        self.selectNumber = num
                                        withAnimation{
                                            self.isExpanded.toggle()
                                        }
                                    }
                            }
                        //}
                    }
                }.accentColor(.white)
                .font(.callout)
                .foregroundColor(.black)
                .padding(.all)
                .background(co)
                .cornerRadius(8)
            } else {
                // Fallback on earlier versions
            }
        }.padding(.all)
//        .onAppear{let prueba2 = prueba()
//            prueba2.paises(completion: { co in
//                print ("en listar paises")
//                print(co)
//        }}
    }
}

struct DropDown : View {
      @State var expand = false
    var body : some  View {
    
        VStack(alignment: .leading,spacing: 15, content:  {
            HStack {
                Text("Home").fontWeight(.heavy).foregroundColor(.white)
                Image(systemName: expand ? "chevron.up" :  "chevron.down").resizable().frame(width: 13, height: 6).foregroundColor(.white)
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand {
                Button(action: {
                        print("1")
                        self.expand.toggle()
                               }) {
                                   Text("1")
                               }.foregroundColor(.white)
                Button(action: {
                        print("2")
                        self.expand.toggle()
                               }) {
                                   Text("2")
                               }.foregroundColor(.white)
                Button(action: {
                        print("3")
                        self.expand.toggle()
                               }) {
                                   Text("3")
                               }.foregroundColor(.white)
                }
            })
       
        .padding()
        .background(LinearGradient(gradient: .init(colors: [.red,.orange]), startPoint: .top, endPoint: .bottom))
         .cornerRadius(20)
        .animation(.spring())
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
        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
            ForEach(0 ..< frameworks.count) {
               Text(self.frameworks[$0])
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

