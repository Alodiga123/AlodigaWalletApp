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
            }.navigationBarTitle("", displayMode: .inline)
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
                        .padding(.bottom, 40)
                    VStack(alignment: .leading) {
                        TextLabelSucesfullBank()
                    }.padding(.leading,70)
                     .padding(.trailing,50)
                    Spacer()
                    
                    BankCheckImagine()
                    NavigationLink(destination: WithdrawalView()) {
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
        Text("SuccesfulBank")
            .font(.caption)
            .foregroundColor(Color.fontBlackColor)
            //.padding()
    }
}

struct BankCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 180.0, weight: .light, design: .monospaced))
            .frame(width: 200, height: 180)
            .padding()
            
    }
}

struct BanksButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalize")
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
