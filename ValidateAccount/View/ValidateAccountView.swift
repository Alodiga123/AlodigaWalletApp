//
//  ValidateAccountView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ValidateAccountView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ValidateAccountViewAccess()
                }
            }.navigationBarTitle("Validar Cuenta", displayMode: .inline)
        }
    }
}

struct ValidateAccountViewAccess: View {
        
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
                        TextLabelValidate()
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    Spacer()
                    ValidateAccountCheckImagine()
                    Spacer()
                    NavigationLink(destination: MainViewLogged()) {
                        EndValidateButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.4)
        }
    }
}

struct TextLabelValidate: View {
    var body: some View {
        Text("Su cuenta se encuentra validada")
            .font(.title)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 300, height: 100)
        
    }
}

struct EndValidateButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalizar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ValidateAccountCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 120.0, weight: .light, design: .monospaced))
    }
}

struct ValidateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAccountView()
            .padding(.horizontal)
    }
}
