//
//  ValidateAdressView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/15/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ValidateAdressView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ValidateAdressViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct ValidateAdressViewAccess: View {
    @State var state: String = ""
    @State var city: String = ""
    @State var zipZone: String = ""
    @State var street: String = ""
    
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
                        TextLabelAccount()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    TextLabelValidateDirecction()
                    StateTextField(state: self.$state)
                    CityTextField(city: self.$city)
                    ZipZoneTextField(zipZone: self.$zipZone)
                    StreetTextField(street: self.$street)
                    NavigationLink(destination: SuccesfullValidateView()) {
                        NextValidateButtonContent()
                    }
                    NavigationLink(destination: PhotoViewStepTwoView()) {
                        ValidateBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelValidateDirecction: View {
    var body: some View {
        Text("Introduzca su dirección")
            .font(.body)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 370, height: 50)
    }
}

struct StateTextField: View {
    @Binding var state: String
    var body: some View {
        FloatingLabelTextField($state, placeholder: "Introduzca el estado", editingChanged: { (isChanged) in
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

struct CityTextField: View {
    @Binding var city: String
    var body: some View {
        FloatingLabelTextField($city, placeholder: "Introduzca la ciudad", editingChanged: { (isChanged) in
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

struct ZipZoneTextField: View {
    @Binding var zipZone: String
    var body: some View {
        FloatingLabelTextField($zipZone, placeholder: "Introduzca el código postal", editingChanged: { (isChanged) in
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

struct StreetTextField: View {
    @Binding var street: String
    var body: some View {
        FloatingLabelTextField($street, placeholder: "Ingrese su calle, Av, casa", editingChanged: { (isChanged) in
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

struct ValidateAdressView_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAdressView()
    }
}
