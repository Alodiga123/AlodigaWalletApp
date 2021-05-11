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
            }.navigationBarTitle("PaymentBusinesses", displayMode: .inline)
        }
    }
}

struct PaymentBusinessesQRViewAccess: View {
    @State var currency: String = ""
    @State var isLoggedIn: Bool = false
    @State var isQrIn: Bool = false
    var loading = Loading()
    
    func IsQrIn(){
        DispatchQueue.main.async {
            self.isQrIn = true
            loading.loadingDismiss()
           
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
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelPayment()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    Spacer()
                    Text("CurrencyTransfer")
                        .font(.callout)
                        .frame(width: 340, alignment: .leading)
                        .foregroundColor(.gray)
                        .padding()
                    FirstPaymentView()
                    TextLabelCodeQR()
                    
                    Button(action: {
                       // loading.loadindView()

                        let qr = "h1/jrRjF47U="
                        Constant.defaults.setValue(qr, forKey: "qr")
                        //let qr = "LDx7uYkEQHqWjNcF9DhAo8slem3BtGbbMkAXercF2H1W51mh32/Vhg=="
                        //let qr = "LDx7uYkEQHqWjNcF9DhAo8slem3BtGbbMkAXercF2H1XZDz9BPdrOA=="
                        let qrController = QrController()

                        qrController.GetBusinessInfoByCryptogram(qr: qr) { (data, error) in
                            
                            
                            if(data != nil){
                                let datos : ObjectQR = data as! ObjectQR
                                
                                Constant.defaults.setValue(datos.envelope.body.tokenResponse._return.businessName, forKey: "businessName")
                                Constant.defaults.setValue(datos.envelope.body.tokenResponse._return.address, forKey: "businessAddress")
                                Constant.defaults.setValue(datos.envelope.body.tokenResponse._return.phoneNumber, forKey: "businessPhoneNumber")
                                
                                self.IsQrIn()
                            }
                            
                            if error != nil {
                                //loading.loadingDismiss()
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: qrController.getMessageError(code: error!))
                                print(error!)
                            }
                            
                        
                        }
                    }, label: {
                        ScannerQRButtonContent()
                    })
                    
                    NavigationLink(destination: TargetCustomerQRView(), isActive:self.$isQrIn){

                        EmptyView()
                    }
                  
                
                    NavigationLink(destination: MainViewLogged()) {
                        PaymentBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
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
        Text("PaymentQr")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelCodeQR: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("ScanStoreQr")
                .foregroundColor(Color.fontOrangeColor)
                .padding(.top,40)
                .padding(.bottom,10)
        }
    }
}

struct ScannerQRButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("ScanQr")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct PaymentBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,5)
    }
}

struct PaymentBusinessesQR_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBusinessesQRView()
    }
}
