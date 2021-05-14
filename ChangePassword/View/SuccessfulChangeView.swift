//
//  SuccessfulChangeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 27/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccessfulChangeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccessfulChangeViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct SuccessfulChangeViewAccess: View {
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
                            TextLabelSuccesfulChange()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        Spacer()
                        ChangeCheckImagine()
                        Spacer()
                        NavigationLink(destination: MainViewLogged()) {
                            EndChangeButtonContents()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(25)
                }.padding(.bottom,geometry.size.height/3.2)
            }
        }
    }
}


struct TextLabelSuccesfulChange: View {
    var body: some View {
        Text("SuccessfulPassChange")
            .font(.title)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 345, height: 80)
    }
}

struct ChangeCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 150.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 160)
    }
}

struct EndChangeButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalize")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct SuccessfulChangeView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulChangeView()
    }
}

