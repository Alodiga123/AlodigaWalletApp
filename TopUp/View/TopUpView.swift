//
//  TopUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TopUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TopUpViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct TopUpViewAccess: View {
    @State var country: String = ""
    @State var destinPhone: String = ""
    @State var senderPhone: String = ""
    @State var language: String = ""
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .center) {
                        TextLabelTopUp()
                    }
                    CountryTopUpTextField(country: self.$country)
                    DestinationPhoneTextField(destinPhone: self.$destinPhone)
                    SenderPhoneTextField(senderPhone: self.$senderPhone)
                    LanguageTextField(language: self.$language)
                    NavigationLink(destination: ProductTopUpView()) {
                        TopUpSerchButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        TopUpBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelTopUp: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("NationalAndInter")
                .font(.title)
                .foregroundColor(Color.fontBlackColor)
                .multilineTextAlignment(.center)
                .frame(width: 345, height: 70)
                .padding()
        }
    }
}

struct CountryTopUpTextField: View {
    @Binding var country: String
    var body: some View {
        FloatingLabelTextField($country, placeholder: "País", editingChanged: { (isChanged) in
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

struct DestinationPhoneTextField: View {
    @Binding var destinPhone: String
    var body: some View {
        FloatingLabelTextField($destinPhone, placeholder: "Teléfono (Destino)", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image(systemName: "candybarphone")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct SenderPhoneTextField: View {
    @Binding var senderPhone: String
    var body: some View {
        FloatingLabelTextField($senderPhone, placeholder: "Teléfono (Remitente)", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image(systemName: "candybarphone")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct LanguageTextField: View {
    @Binding var language: String
    var body: some View {
        FloatingLabelTextField($language, placeholder: "Idioma", editingChanged: { (isChanged) in
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

struct TopUpSerchButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Search")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct TopUpBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom,5)
    }
}

struct TopUpView_Previews: PreviewProvider {
    static var previews: some View {
        TopUpView()
    }
}
