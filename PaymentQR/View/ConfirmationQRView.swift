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
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ConfirmationQRViewAccess: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen"]
    let currencySelect = Constant.defaults.object(forKey: "currencySelectedQr") as? [String: String] ?? [String: String]()
    @State var isSuccesKey: Bool = false
    var loading = Loading()

    
    func isSuccesKeyIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isSuccesKey = true
        }
    }
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
                    

                    Text(currencySelect["nombreProducto"] ?? "")
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
                        Spacer()

                        HStack {
                            Text("Concepto")
                                .frame(width: 70, alignment: .leading)
                                .font(.caption)
                            Spacer()
                            Text(Constant.defaults.value(forKey: "conceptQr") as! String)
                                .font(.caption)
                        }
                        
                    
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Button(action: {
                        
                        loading.loadindView()

                        let datos = AL_SavePaymentShop()
                        let qrController = QrController()

                        datos.cpAmountPayment = Constant.defaults.value(forKey: "amountQr") as! String
                        datos.cpConceptTransaction = Constant.defaults.value(forKey: "conceptQr") as! String
                        datos.cpCryptogramShop = Constant.defaults.value(forKey: "qr") as! String
                        datos.cpProductId = currencySelect["id"]
                        datos.cpEmailUser = Constant.defaults.value(forKey: "emailUser") as! String
                            
                        qrController.savePaymentShop(datos: datos) { (data, error) in
                            
                           /* map.put("cryptogramShop", cryptogramShop);
                                             map.put("emailUser", emailUser);
                                             map.put("productId", productId);
                                             map.put("amountPayment", amountPayment);
                                             map.put("conceptTransaction", conceptTransaction);*/
                            

                            if(data != nil){
                                let datos : ObjectProcessQR = data as! ObjectProcessQR
                                
                                Constant.defaults.setValue(datos.envelope.body.cambiar._return.idTransaction, forKey: "idTransactionQr")
                                Constant.defaults.setValue(datos.envelope.body.cambiar._return.fechaHora, forKey: "fechaHoraQr")
                            
                                
                                loading.loadingDismiss()
                                self.isSuccesKeyIn()
                            }
                            
                            if error != nil {
                                loading.loadingDismiss()
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: qrController.getMessageError(code: error!))
                                print(error!)
                            }
                            
                        
                        }
                        
                        
                        
                    }, label: {
                        PaymentProcessButtonContent()
                    })
                    
                    NavigationLink(destination: SuccesfulPaymentQRView(), isActive:self.$isSuccesKey){
                        EmptyView()
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
