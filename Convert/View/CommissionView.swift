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
            }.navigationBarTitle("Comisión", displayMode: .inline)
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
        //ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,30)
                        VStack(alignment: .leading) {
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
                                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        TextLabelExchange()
                            .padding(.horizontal)
                            .fixedSize(horizontal: false, vertical: true)
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
                            NextButtonContent()
                        }
                        NavigationLink(destination: ConvertView()) {
                            BackButtonContent()
                        }
                        Spacer()
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        //}
    }
}

struct TextLabelDetail: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Detalles")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TextLabelExchange: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Tasa de Cambio")
                .font(.callout)
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

