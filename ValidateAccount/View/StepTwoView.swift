//
//  StepTwoView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct StepTwoView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    StepTwoViewAccess()
                }
            }.navigationBarTitle("Validar Cuenta", displayMode: .inline)
        }
    }
}

struct StepTwoViewAccess: View {
        
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
                        TextLabelAccount()
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    Spacer(minLength: 20)
                    TextLabelValidateAccountInstrucction2()
                    Spacer(minLength: 150)
                    TextLabelValidateResolution()
                    NavigationLink(destination: PhotoViewStepTwoView()) {
                        TakePhotoButtonContent()
                    }
                    NavigationLink(destination: PhotoView()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelValidateAccountInstrucction2: View {
    var body: some View {
        Text("2. Por favor toma una foto sosteniendo un cartel que diga Mejora Tu Vida, con la fecha de hoy.")
            .font(.body)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 370, height: 60)
    }
}

struct StepTwoView_Previews: PreviewProvider {
    static var previews: some View {
        StepTwoView()
    }
}
