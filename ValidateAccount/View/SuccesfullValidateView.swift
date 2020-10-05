//
//  SuccesfullValidateView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccesfullValidateView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccesfullValidateViewAccess()
                }
            }.navigationBarTitle("Validar Cuenta", displayMode: .inline)
        }
    }
}

struct SuccesfullValidateViewAccess: View {
        
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack(alignment: .center){
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .center) {
                        TextLabelAccount()
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    TextLabelValidateProcess()
                    //Spacer(minLength: 10)
                    TextLabelValidateAccountSuccesfull()
                    ClockImagine()
                    NavigationLink(destination: MainViewLogged()) {
                        EndValidateButtonContent()
                    }
                }.padding(.horizontal)
                .background(Color.cardButtonViewGray)
                .frame(width: geometry.size.width, height: geometry.size.height/1.2, alignment: .top)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelValidateProcess: View {
    var body: some View {
        Text("Su validación esta en proceso")
            .font(.body)
            .foregroundColor(Color.fontOrangeColor)
    }
}

struct TextLabelValidateAccountSuccesfull: View {
    var body: some View {
        Text("En las proximas 24 horas le estaremos notificando.\n Una vez validado ud podrá hacer todas las funcionalidades que le brinda la Billetera Alogida")
            .font(.callout)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 368, height: 80, alignment: .center)
            .padding(.leading,5)
             .padding(.trailing,5)
    }
}

struct ClockImagine: View {
    var body: some View {
        Image(systemName: "clock")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 120.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 170)
    }
}

struct SuccesfullValidateView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesfullValidateView()
    }
}
