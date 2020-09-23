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
            }.navigationBarTitle("Volver", displayMode: .inline)
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
                     Spacer()
                        TextLabelPayment()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    TextLabelInformation()
                    ForEach(self.labels, id: \.self) { label in
                        HStack {
                            Text(label)
                                .frame(width: 50, alignment: .leading)
                                .font(.caption)
                            TextField(label, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    TextLabelInfomationPaymen()
                    TaxAmountTextField(amount: self.$amount)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    ConceptTextField(concept: self.$concept)
                    
                    NavigationLink(destination: OperationsKeyQRView()) {
                        SendButtonContents()
                    }
                    NavigationLink(destination: PaymentBusinessesQRView()) {
                        BackButtonContent()
                    }
                    Spacer()
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TargetCustomerQRView_Previews: PreviewProvider {
    static var previews: some View {
        TargetCustomerQRView()
    }
}
