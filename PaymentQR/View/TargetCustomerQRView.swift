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
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct TargetCustomerQRViewAccess: View {
    @State var text = ""
    @State var amount: String = ""
    @State var concept: String = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Origen"]
    let currencySelect = Constant.defaults.object(forKey: "currencySelectedQr") as? [String: String] ?? [String: String]()
    let productDefault = Constant.defaults.object(forKey: "ProductDefault") as? [String: String] ?? [String: String]()
    @State var isQrIn: Bool = false
    var loading = Loading()
    
    func IsQrIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isQrIn = true
        }
    }
    
    
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
    
                    
                    VStack{
                        HStack {
                            Text("Name")
                                .frame(width: 70, alignment: .leading)
                                .font(.caption)
                            Spacer()

                            Text(Constant.defaults.value(forKey: "businessName") as! String ?? "Name")
                                .font(.caption)
                        
                        }
                        Spacer()

                    HStack {
                        Text("Phone")
                            .frame(width: 70, alignment: .leading)
                            .font(.caption)
                        Spacer()

                        Text(Constant.defaults.value(forKey: "businessPhoneNumber") as! String ?? "Phone")
                            .font(.caption)
                    }
                    
                        Spacer()

                    HStack {
                        Text("Origin")
                            .frame(width: 70, alignment: .leading)
                            .font(.caption)
                        Spacer()
                        

                        Text(currencySelect["nombreProducto"] ?? "" )
                            .font(.caption)
                    }
                        
                    
                    
                  /*  HStack {
                        Text("Destination")
                            .frame(width: 70, alignment: .leading)
                            .font(.caption)
                        Spacer()
                        TextField(currencySelect["nombreProducto"] ?? "" , text: self.$text)
                            .font(.caption)
                    }*/
                        
                    } .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                   
                    TextLabelPaymentInf()
                    PaymentAmountTextField(amount: self.$amount)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    PaymentConceptTextField(concept: self.$concept)
                    
                    let amount_aux : Float = Float(amount) ?? 0
                    let saldo1 = currencySelect["saldoActual"] as? String ?? "0"
                    let saldo : Float = Float(saldo1) ?? 0
                                              
                    
                    Button(action: {
                        
                        let alert = ShowAlert()
                        
                        if(amount.isEmpty || concept.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                        }
                        else if(amount_aux <= 0){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("invalidAmount", comment: "") )
                        }else if(saldo < amount_aux ){
                            
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("web_services_response_33", comment: "") )
                        }else{
                            Constant.defaults.setValue(amount, forKey: "amountQr")
                            Constant.defaults.setValue(concept, forKey: "conceptQr")

                            self.IsQrIn()
                            
                        }
                        
                    }, label: {
                        PaymentSendButtonContent()
                    })
                    
                    
                    NavigationLink(destination: OperationsKeyViewQr(), isActive:self.$isQrIn){
                        EmptyView()
                    }
                  
                    NavigationLink(destination: PaymentBusinessesQRView()) {
                        PaymentBackButtonContent()
                    }
                    
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
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
