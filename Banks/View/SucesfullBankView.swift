//
//  WelcomeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 22/04/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SucesfullBankView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SucesfullBankViewAccess()
                }
            }.navigationBarTitle("Bank", displayMode: .inline)
        }
    }
}

struct SucesfullBankViewAccess: View {
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
                        TextLabelSucesfullBank()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    
                    RegisterCheckImagine()
                    TextLabelBanks()
                    NavigationLink(destination: MainViewLogged()) {
                        BanksButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                 .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelSucesfullBank: View {
    var body: some View {
        Text("Welcome")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct BankCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}

struct TextLabelBanks: View {
    var body: some View {
        Text("RegisterCompleted")
            .font(.body)
            //.font(.system(size: 100.0, weight: .light, design: .monospaced))
            .foregroundColor(.gray)
            .padding(.leading,28)
            .padding(.trailing,28)
            .padding(.bottom,0)
            .padding(.top,18)
    }
}

struct BanksButtonContent: View {
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

struct SucesfullBankView_Previews: PreviewProvider {
    static var previews: some View {
        SucesfullBankView()
    }
}
