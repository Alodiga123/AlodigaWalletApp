//
//  SuccesfulRecoverView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/23/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccesfulRecoverView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccesfulRecoverViewAccess()
                }
            }.navigationBarTitle("Recuperación exitosa", displayMode: .inline)
        }
    }
}

struct SuccesfulRecoverViewAccess: View {
    @State var pass: String = ""
    @State var repeatPass: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelSuccesfulRecover()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        Spacer()
                        CheckRecoverImagine()
                        Spacer()
                        NavigationLink(destination: MainViewLogged()) {
                            EndRecoverButtonContents()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            LoginButtonContents()
                        }
                        
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/3.2)
            }
        }
    }
}


struct TextLabelSuccesfulRecover: View {
    var body: some View {
        Text("Recuperación de contraseña exitoso")
            .font(.title)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 335, height: 80)
    }
}

struct EndRecoverButtonContents: View {
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


struct LoginButtonContents: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Iniciar sesión")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,18)
    }
}

struct CheckRecoverImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 120.0, weight: .light, design: .monospaced))
            .frame(width: 150, height: 120)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,10)
            .padding(.top,10)
    }
}

struct SuccesfulRecoverView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesfulRecoverView()
    }
}

