//
//  TransferenceView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SucesfullWithdrawalView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SucesfullWithdrawalViewAccess()
                }
            }.navigationBarTitle("Resumen", displayMode: .inline)
        }
    }
}

struct SucesfullWithdrawalViewAccess: View {
    @State var text = ""
    let labels = ["Pais", "Banco", "Producto", "Cuenta", "Monto", "Descripción"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack (alignment: .center, spacing: 5) {
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelSucesfullWithdrawal()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    CheckImagine()
                    ForEach(self.labels, id: \.self) { label in
                        HStack {
                            Text(label)
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(label, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    NavigationLink(destination: MainViewLogged()) {
                        EndButtonContents()
                    }
                    
                    NavigationLink(destination: MainViewLogged()) {
                        ShareButtonContents()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/8.2)
        }
    }
}

struct TextLabelSucesfullWithdrawal: View {
    var body: some View {
        Text("Retiro Exitoso")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct SucesfullWithdrawalView_Previews: PreviewProvider {
    static var previews: some View {
        SucesfullWithdrawalView()
    }
}
