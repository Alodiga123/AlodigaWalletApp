//
//  SuccesfulPaymentQRView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccesfulPaymentQRView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccesfulPaymentQRViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline).navigationBarBackButtonHidden(true)
        }
    }
}

struct SuccesfulPaymentQRViewAccess: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen", "Fecha", "Transaccion"]
    let currencySelect = Constant.defaults.object(forKey: "currencySelectedQr") as? [String: String] ?? [String: String]()
    @State var isTransfereceProcess: Bool = false
    
    func isTransfereceProcessIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isTransfereceProcess = true
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
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelSuccesfulTransaction()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    PaymentCheckImagine()
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
                        
                        Spacer()
                    
                            HStack {
                                Text("Monto")
                                    .frame(width: 70, alignment: .leading)
                                    .font(.caption)
                                Spacer()
                                Text( Constant.defaults.value(forKey: "amountQr") as! String)
                                    .font(.caption)
                            }
                    }.padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                        
                    VStack{
                        Spacer()
                            HStack {
                                Text("Concepto")
                                    .frame(width: 70, alignment: .leading)
                                    .font(.caption)
                                Spacer()
                                Text(Constant.defaults.value(forKey: "conceptQr") as! String)
                                    .font(.caption)
                            }
                        
                        
                        Spacer()
                        
                        HStack {
                            Text("Transaction")
                                .frame(width: 70, alignment: .leading)
                                .font(.caption)
                            Spacer()
                            Text( Constant.defaults.value(forKey: "idTransactionQr") as! String)
                                .font(.caption)
                        }
                        Spacer()

                        HStack {
                            Text("Date")
                                .frame(width: 70, alignment: .leading)
                                .font(.caption)
                            Spacer()
                            Text( Constant.defaults.value(forKey: "fechaHoraQr") as! String)
                                .font(.caption)
                        }
                   
                                  
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    
                    
                    Button {
                        Constant.defaults.removeObject(forKey: "optionTransference")
                        Constant.defaults.removeObject(forKey: "currencySelected")
                        Constant.defaults.removeObject(forKey: "optionSelected")
                        Constant.defaults.removeObject(forKey: "jsonUserByEmail")
                        Constant.defaults.removeObject(forKey: "jsonUserByMovil")
                        Constant.defaults.removeObject(forKey: "amount")
                        Constant.defaults.removeObject(forKey: "concept")
                        Constant.defaults.removeObject(forKey: "countKey")
                        isTransfereceProcessIn()

                    } label: {
                        PaymentEndButtonContent()
                    }

                    
                    NavigationLink(destination: MainViewLogged(), isActive:self.$isTransfereceProcess){
                        EmptyView()
                    }
                    
                    
                    
    
               
                    Button(action: {
      
                        let util = Utils()
                        let name = Constant.defaults.value(forKey: "businessName") as! String
                        let phone = Constant.defaults.value(forKey: "businessPhoneNumber") as! String ?? "Phone"
                        let amount =  Constant.defaults.value(forKey: "amountQr") as! String
                        let concept = Constant.defaults.value(forKey: "conceptQr") as! String
                        let date = Constant.defaults.value(forKey: "fechaHoraQr") as! String
                        let id = Constant.defaults.value(forKey: "idTransactionQr") as! String
                        let product = currencySelect["nombreProducto"] ?? ""
                        
                        let shared  =
                            NSLocalizedString("confirmation_title_successfull_alodiga", comment: "") + "\n" + NSLocalizedString("Name", comment: "") + " " + name +
                        "\n" + NSLocalizedString("Phone", comment: "") + " " + phone + "\n" +  NSLocalizedString("Monto", comment: "") + " " + amount
                            + "\n" + NSLocalizedString("Concepto", comment: "") + " " + concept
                            + "\n" + NSLocalizedString("Origin", comment: "") + " " + product
                                + "\n" + NSLocalizedString("Date", comment: "") + " " + date
                                + "\n" + NSLocalizedString("Transaction", comment: "") + " " + id
                        
                        share(items: [shared])
                    }) {
                        ShareButtonContents()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct PaymentCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}

struct PaymentEndButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalize")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct PaymentShareButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Share")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}

struct SuccesfulPaymentQRView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesfulPaymentQRView()
    }
}
