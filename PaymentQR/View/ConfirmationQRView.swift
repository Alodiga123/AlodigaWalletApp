//
//  ConfirmationQRView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ConfirmationQRView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ConfirmationQRViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct ConfirmationQRViewAccess: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,20)
                    VStack(alignment: .leading) {
                        TextLabelConfirmnation()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    TextLabelInformation()
                    ForEach(self.labels, id: \.self) { label in
                        HStack {
                            Text(label)
                                .frame(width: 60, alignment: .leading)
                                .font(.caption)
                            TextField(label, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    NavigationLink(destination: SuccesfulPaymentQRView()) {
                        ProcessButtonContents()
                    }
                    NavigationLink(destination: OperationsKeyQRView()) {
                        BackButtonContent()
                    }
                    Spacer()
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}


struct ConfirmationQRView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationQRView()
    }
}
