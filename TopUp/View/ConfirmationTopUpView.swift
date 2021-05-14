//
//  ConfirmationTopUpView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/19/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ConfirmationTopUpView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ConfirmationTopUpViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ConfirmationTopUpViewAccess: View {
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
                        TextLabelConfirmnation()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    TextLabelInformationTopUp()
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
                    
                    NavigationLink(destination: SuccessTopUpView()) {
                        TopUpProcessButtonContents()
                    }
                    
                    NavigationLink(destination: OperationKeyTopUpView()) {
                        TopUpBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/8.2)
        }
    }
}

struct TextLabelInformationTopUp: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("RechargeInformation")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TopUpProcessButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Process")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,18)
    }
}

struct ConfirmationTopUpView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationTopUpView()
    }
}
