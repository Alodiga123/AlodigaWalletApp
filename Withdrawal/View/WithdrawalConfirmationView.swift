//
//  WithdrawalConfirmationView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct WithdrawalConfirmationView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    WithdrawalConfirmationViewAccess()
                }
            }.navigationBarTitle("Confirmation", displayMode: .inline)
        }
    }
}

struct WithdrawalConfirmationViewAccess: View {
    @State var text = ""
    let productSelect = Constant.defaults.object(forKey: "productSelected") as? [String: String] ?? [String: String]()
    @State var stepThree: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepThree = true
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
                        TextLabelConfirmnation()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    TextLabelInfWithdrawal()
                    VStack{
                        HStack {
                            Text("Pais")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "nameCountryR") as! String, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Banco")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "nameBankR") as! String, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Producto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "nameProductR") as! String, text: self.$text)
                           // TextField(productSelect["productSelected"]!, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Cuenta")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "acountRemoval") as! String, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Monto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "amountRemoval") as! String, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Descripción")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "descriptionRemoval") as! String, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
//                    NavigationLink(destination: SucesfullWithdrawalView()) {
//                        WithdrawalProcessButtonContent()
//                            .padding(.top)
//                    }
                    
                    Button(action: {
                        let withdrawalControler = WithdrawalControler()
                        let retiroManual = AL_ManualWithdrawals()
                        let alert = ShowAlert()
                        let loading = Loading()
                        loading.loadindView()
                                                  
                        retiroManual.cpBankId = Constant.defaults.value(forKey: "idBankR") as? String
                        retiroManual.cpEmailUser = Constant.defaults.value(forKey: "emailUser") as? String
                        //retiroManual.cpAccountBank = Constant.defaults.value(forKey: "acountRemoval") as? String
                        retiroManual.cpAmountWithdrawal = Constant.defaults.value(forKey: "amountRemoval") as? String
                        retiroManual.cpProductId = Constant.defaults.value(forKey: "idProductR") as? String
                        retiroManual.cpConceptTransaction = Constant.defaults.value(forKey: "descriptionRemoval") as? String
                        
                        withdrawalControler.getManualWithdrawals(retirosManuales: retiroManual){ (res,error) in
                            if res != nil {
                                print("+++++++++++ OBJETO +++++++++++++++++")
                                print(res)
                                loading.loadingDismiss()
                                stepNex()
                            }
                            if error != nil {
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                                print(error!)
                                loading.loadingDismiss()
                            }
                         }
                        stepNex()
                 
                    }) {
                        WithdrawalProcessButtonContent()
                    }
                 
                    NavigationLink(destination: SucesfullWithdrawalView(), isActive:self.$stepThree){
                        EmptyView()
                    }
                    NavigationLink(destination: WithdrawalView()) {
                        WithdrawallBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}


struct TextLabelInfWithdrawal: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("WithdrawalInformation")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct WithdrawalProcessButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Process")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
    }
}

struct WithdrawalConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        WithdrawalConfirmationView()
    }
}
