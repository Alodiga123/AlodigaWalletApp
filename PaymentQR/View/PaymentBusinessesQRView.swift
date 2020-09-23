//
//  PaymentBusinessesQRView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct PaymentBusinessesQRView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    PaymentBusinessesQRViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct PaymentBusinessesQRViewAccess: View {
    @State var currency: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        Spacer()
                        TextLabelPayment()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    Spacer()
                    CurrencyKeyTextField(currency: self.$currency)
                    TextLabelCodeQR()
                    
                    NavigationLink(destination: TargetCustomerQRView()) {
                        ScannerQRButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        BackButtonContent()
                    }
                    .padding()
                    Spacer()
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct CurrencyKeyTextField: View {
    @Binding var currency: String
    var body: some View {
        FloatingLabelTextField($currency, placeholder: "Seleccione la moneda a transferir", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            })
            .placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top)
            .padding(.bottom,0)
    }
}

struct TextLabelPayment: View {
    var body: some View {
        Text("Pago QR Comercios")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelCodeQR: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Escanee el Codigo QR del comercio")
                .foregroundColor(Color.fontOrangeColor)
                .padding(.top,60)
                .padding(.bottom,10)
        }
    }
}

struct ScannerQRButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Escanear QR")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct PaymentBusinessesQR_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBusinessesQRView()
    }
}
/*
 func Ejecutar(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
 */
