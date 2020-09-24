//
//  ConfirmationConvertView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/21/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ConfirmationConvertView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ConfirmationConvertAccess()
                }
            }.navigationBarTitle("Confirmación", displayMode: .inline)
        }
    }
}


struct ConfirmationConvertAccess: View {
    @State var text = ""
    @State var amount: String = ""
    @State var concept: String = ""
    let detail = ["Comisión en monto", "Comisión", "Tasa de comisión", "Monto a convertir", "Total a debitar","Monto convertido"]
    let exchange = ["Alocoins", "Saldo NV"]
    
    var body: some View {
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,10)
                        VStack(alignment: .leading) {
                            Spacer()
                            TextLabelConvert()
                        }.padding(.leading,20)
                         .padding(.trailing,20)
                        ConvertCheckImagine()
                        //TextLabelDetail()
                        ForEach(self.detail, id: \.self) { label in
                            HStack {
                                Text(label)
                                    .frame(width: 120, alignment: .leading)
                                    .font(.caption)
                                TextField(label, text: self.$text)
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        TextLabelExchange()
                        ForEach(self.exchange, id: \.self) { label in
                            HStack {
                                Text(label)
                                    .frame(width: 120, alignment: .leading)
                                    .font(.caption)
                                TextField(label, text: self.$text)
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        NavigationLink(destination: MainViewLogged()) {
                            ConvertEndButtonContent()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            ConvertShareButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
    }
}

struct ConvertCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}


struct ConvertEndButtonContent: View {
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

struct ConvertShareButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Compartir")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}

struct ConfirmationConvertView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationConvertView()
    }
}

