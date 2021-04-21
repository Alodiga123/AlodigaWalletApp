//
//  RechargeConfirmationView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct RechargeConfirmationView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    RechargeConfirmationViewAccess()
                }
            }.navigationBarTitle("Confirmation", displayMode: .inline)
        }
    }
}

struct RechargeConfirmationViewAccess: View {
    @State var text = ""
    let countrySelect = Constant.defaults.object(forKey: "countrySelected") as? [String: String] ?? [String: String]()
    let banksSelected = Constant.defaults.object(forKey: "banksSelected") as? [String: String] ?? [String: String]()
    let productSelected = Constant.defaults.object(forKey: "productSelected") as? [String: String] ?? [String: String]()
    @State var stepthree: Bool = false
    var loading = Loading()
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepthree = true
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
                    TextLabelInfRecharge()
                    VStack{
                        /*HStack {
                            Text("País")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(countrySelect["nameCountryRe"]!, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Banco")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "nameBankRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Producto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "nameProductRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                        */
                        HStack {
                            Text("Concepto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "conceptRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                        
                        HStack {
                            Text("Transf No")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "transferRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                        
                        HStack {
                            Text("Monto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "amountRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Button(action: {
                        //loading.loadindView()
                        let saveManualRecharger = AL_ManualRecharge()
                        saveManualRecharger.cpBankId = countrySelect["id"]
                        saveManualRecharger.cpEmailUser = Constant.defaults.value(forKey: "email") as! String
                        saveManualRecharger.cpReferenceNumberOperation = Constant.defaults.value(forKey: "transferRe")  as! String
                        saveManualRecharger.cpAmountRecharge = Constant.defaults.value(forKey: "amountRe")  as! String
                        saveManualRecharger.cpProductId = productSelected["id"]
                        saveManualRecharger.cpConceptTransaction = Constant.defaults.value(forKey: "conceptRe")  as! String
                        saveManualRecharger.cpDocumentTypeId = "1"
                        saveManualRecharger.cpOriginApplicationId = "1"
                        
                        let controller = ResponseController()
                    
                        //self.progress.toggle()
                        controller.getSaveManualRecharge(saveManualRecharge: saveManualRecharger) { (res, error) in
                            //loading.loadingDismiss()
                            if(res != nil){
                                //self.progress.toggle()
                                self.stepNex()
                            }
                            
                            if error != nil {
                                //loading.loadingDismiss()
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: controller.getMessageError(code: error!))
                                print(error!)
                            }
                            
                        }
                        
                        
                    }) {
                        ProcessButtonContents()
                    }.padding(3)
                    
                    NavigationLink(destination: SucesfullRechargeView(), isActive:self.$stepthree){
                        EmptyView()
                    }
                    
                    NavigationLink(destination: RechargeView()) {
                        RechargeBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}


struct TextLabelInfRecharge: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("RechargeInformation")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct RechargeProcessButtonContent: View {
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

struct RechargeConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        RechargeConfirmationView()
    }
}
