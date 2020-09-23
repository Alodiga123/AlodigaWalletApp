//
//  ValidateAccountFirstView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ValidateAccountFirstView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ValidateAccountFirstViewAccess()
                }
            }.navigationBarTitle("Validar Cuenta", displayMode: .inline)
        }
    }
}

struct ValidateAccountFirstViewAccess: View {
        
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
                        TextLabelValidateAccountFirst()
                            .frame(width: 300, height: 100)
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    Spacer(minLength: 30)
                    CircleImagine()
                    Spacer(minLength: 30)
                    NavigationLink(destination: TakePhotoView()) {
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

struct TextLabelValidateAccountFirst: View {
    var body: some View {
        Text("Para poder desfrutar de los servicios que brinda la billetera Alodiga debe validar su cuenta")
            .font(.body)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct ValidateAccountFirstView_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAccountFirstView()
    }
}
