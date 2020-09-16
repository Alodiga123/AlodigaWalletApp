//
//  TransferenceView.swift
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
                Image("back_login")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    WelcomeViewViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
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
                            .padding()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    
                    CheckImagine()
                    TextLabelStart()
                                           //.padding(.bottom,60)
                    NavigationLink(destination: MainViewLogged()) {
                        MainButtonContent()
                    }
                    Spacer()
                }.background(Color.cardButtonViewGray)
                 .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/3.2)
        }
    }
}



struct TextLabelWelcome: View {
    var body: some View {
        Text("Bienvenido")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}


struct TextLabelStart: View {
    var body: some View {
        Text("Gracias! Su registro a sido completado de forma exitosa. Ya puede comenzar a utilizar nuestros servicios")
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            //.padding(.leading,20)
           // .padding(.trailing,28)
           // .padding(.bottom,0)
            //.padding(.top,18)
    }
}


struct MainButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Ingresar")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,8)
    }
}

struct CheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
        //.font(.system(size: 200.0, weight: .light))
            .font(.system(size: 200.0, weight: .light, design: .monospaced))
            .frame(width: 250, height: 180)
      //      .padding(.leading,20)
      //      .padding(.trailing,28)
      //      .padding(.bottom,0)
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
