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
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    Spacer(minLength: 30)
                    CircleImagine()
                    Spacer(minLength: 30)
                    NavigationLink(destination: TakePhotoView()) {
                        ValidateAccountButtonContent()
                    }
//                    NavigationLink(destination: MainViewLogged()) {
//                        BackButtonContent()
//                    }
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
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 300, height: 100)

    }
}

struct ValidateBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Atras")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ValidateAccountFirstView_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAccountFirstView()
            .padding(.horizontal)
    }
}
