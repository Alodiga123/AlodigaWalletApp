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
            }.navigationBarTitle("Confirmation", displayMode: .inline)
        }
    }
}

struct ConfirmationQRViewAccess: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen"]
    let currencySelect = Constant.defaults.object(forKey: "currencySelectedQr") as? [String: String] ?? [String: String]()

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
                    TextLabelPaymentInfAcount()
                    VStack{
                    HStack {
                        Text("Name")
                            .frame(width: 70, alignment: .leading)
                            .font(.caption)
                        Spacer()

                        TextField(Constant.defaults.value(forKey: "businessName") as! String ?? "Name", text: self.$text)
                            .font(.caption)
                    
                    }
                
                HStack {
                    Text("Phone")
                        .frame(width: 70, alignment: .leading)
                        .font(.caption)
                    Spacer()

                    TextField(Constant.defaults.value(forKey: "businessPhoneNumber") as! String ?? "Phone", text: self.$text)
                        .font(.caption)
                }
                
                
                HStack {
                    Text("Origin")
                        .frame(width: 70, alignment: .leading)
                        .font(.caption)
                    Spacer()
                    

                    TextField(currencySelect["nombreProducto"] ?? "" , text: self.$text)
                        .font(.caption)
                }
                    
                
                
                        HStack {
                            Text("Monto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "amountQr") as! String, text: self.$text)
                                .font(.caption)
                        }
                        
                        HStack {
                            Text("Concepto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "conceptQr") as! String, text: self.$text)
                                .font(.caption)
                        }
                        
                    
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    NavigationLink(destination: SuccesfulPaymentQRView()) {
                        PaymentProcessButtonContent()
                    }
                    NavigationLink(destination: OperationsKeyViewQr()) {
                        PaymentBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct PaymentProcessButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Process")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,15)
    }
}

struct ConfirmationQRView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationQRView()
    }
}
