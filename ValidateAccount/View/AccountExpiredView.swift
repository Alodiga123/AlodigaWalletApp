//
//  AccountExpiredView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct AccountExpiredView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    AccountExpiredViewAccess()
                }
            }.navigationBarTitle("Cuenta Vencida", displayMode: .inline)
        }
    }
}

struct AccountExpiredViewAccess: View {
        
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
                        TextLabelValidateAccount()
                            .frame(width: 300, height: 100)
                        TextLabelValidateAccountAgain()
                            .frame(width: 300, height: 100)
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    Spacer(minLength: 30)
                    CircleImagine()
                    Spacer(minLength: 30)
                    NavigationLink(destination: MainViewLogged()) {
                        ValidateAccountButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelValidateAccount: View {
    var body: some View {
        Text("La validación de cuenta se encuentra vencida")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelValidateAccountAgain: View {
    var body: some View {
        Text("Para poder desfrutar de los servicios que brinda la billetera Alodiga debe validar su cuenta nuevamente")
            .font(.body)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct ValidateAccountButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Validar Cuenta")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct CircleImagine: View {
    var body: some View {
        Image(systemName: "slash.circle")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 120.0, weight: .light, design: .monospaced))
            .frame(width: 150, height: 120)
    }
}

struct AccountExpiredView_Previews: PreviewProvider {
    static var previews: some View {
        AccountExpiredView()
    }
}
