//
//  TargetCustomerQRView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TargetCustomerQRView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TargetCustomerQRViewAccess()
                }
            }.navigationBarTitle("PaymentDetails", displayMode: .inline)
        }
    }
}

struct TargetCustomerQRViewAccess: View {
    @State var text = ""
    @State var amount: String = ""
    @State var concept: String = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Origen"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack (alignment: .center, spacing: 5) {
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,30)
                    VStack(alignment: .leading) {
                        TextLabelPayment()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    TextLabelPaymentInfAcount()
                    ForEach(self.labels, id: \.self) { label in
                        HStack {
                            Text(label)
                                .frame(width: 50, alignment: .leading)
                                .font(.caption)
                            TextField(label, text: self.$text)
                                .font(.caption)
                        }
                    }.padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    TextLabelPaymentInf()
                    PaymentAmountTextField(amount: self.$amount)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    PaymentConceptTextField(concept: self.$concept)
                    
                    NavigationLink(destination: OperationsKeyQRView()) {
                        PaymentSendButtonContent()
                    }
                    NavigationLink(destination: PaymentBusinessesQRView()) {
                        PaymentBackButtonContent()
                    }
                    Spacer()
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelPaymentInfAcount: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("DestinationAccount")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TextLabelPaymentInf: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("PaymentInformation")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct PaymentAmountTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: "Monto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,10)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct PaymentConceptTextField: View {
    @Binding var concept: String
    var body: some View {
        FloatingLabelTextField($concept, placeholder: "Concepto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,10)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct PaymentSendButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Send")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,15)
    }
}

struct TargetCustomerQRView_Previews: PreviewProvider {
    static var previews: some View {
        TargetCustomerQRView()
    }
}
