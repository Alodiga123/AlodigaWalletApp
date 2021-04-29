//
//  WelcomeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/15/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    WelcomeViewViewAccess()
                }
            }.navigationBarTitle("UserCreated", displayMode: .inline)
        }
    }
}

struct WelcomeViewViewAccess: View {
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
                        TextLabelWelcome()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    
                    RegisterCheckImagine()
                    TextLabelStart()
                    NavigationLink(destination: MainViewLogged()) {
                        MainButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                 .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelWelcome: View {
    var body: some View {
        Text("Welcome")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct RegisterCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 375, height: 100)
    }
}

struct TextLabelStart: View {
    var body: some View {
        Text("RegisterCompleted")
            .font(.body)
            //.font(.system(size: 100.0, weight: .light, design: .monospaced))
            .foregroundColor(.gray)
            .padding(.leading,30)
            .padding(.trailing,30)
            .padding(.bottom,5)
            .padding(.top,18)
    }
}

struct MainButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Enter")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
