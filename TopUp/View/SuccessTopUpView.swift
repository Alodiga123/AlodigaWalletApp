//
//  SuccessTopUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccessTopUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccessTopUpViewAccess()
                }
            }.navigationBarTitle("Success", displayMode: .inline)
        }
    }
}

struct SuccessTopUpViewAccess: View {
    @State var text = ""
    let labels = ["Pais", "Operadora","Teléfono Remitente", "Teléfono Destino", "Monto", "Fecha", "Transacción", ]
    
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
                        TextLabelSucesfullRecharge()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    TopUpCheckImagine()
                    ForEach(self.labels, id: \.self) { label in
                        HStack {
                            Text(label)
                                .frame(width: 115, alignment: .leading)
                                .font(.caption)
                            TextField(label, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    NavigationLink(destination: MainViewLogged()) {
                        TopUpEndButtonContent()
                    }                    
                    NavigationLink(destination: MainViewLogged()) {
                        TopUpShareButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/8.2)
        }
    }
}

struct TopUpCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}

struct TopUpEndButtonContent: View {
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

struct TopUpShareButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Share")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}

struct SuccessTopUpView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessTopUpView()
    }
}
