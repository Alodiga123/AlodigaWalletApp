//
//  CommissionView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/21/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct CommissionView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    CommissionViewAccess()
                }
            }.navigationBarTitle("Commission", displayMode: .inline)
        }
    }
}

struct CommissionViewAccess: View {
    @State var text = ""
    @State var amount: String = ""
    @State var concept: String = ""
    let detail = ["Comisión en monto", "Comisión", "Tasa de comisión", "Monto a convertir", "Total a debitar","Monto convertido"]
    let exchange = ["Alocoins", "Saldo NV"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack {
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .center) {
                        Spacer()
                        TextLabelConvert()
                    }.padding(.leading,20)
                    .padding(.trailing,20)
                    TextLabelDetail()
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
                    NavigationLink(destination: OperationKeyConvertView()) {
                        ConvertNextButtonContent()
                    }
                    NavigationLink(destination: ConvertView()) {
                        ConvertBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelDetail: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Details")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TextLabelExchange: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("ExchangeRate")
                .font(.callout)
                .frame(width: 340, height: 5, alignment: .leading)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct CommissionView_Previews: PreviewProvider {
    static var previews: some View {
        CommissionView()
    }
}

