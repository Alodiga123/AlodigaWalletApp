//
//  RechargeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct RechargeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    RechargeViewAccess()
                }
            }.navigationBarTitle("Recharge", displayMode: .inline)
        }
    }
}

struct RechargeViewAccess: View {
    @State var conceptRecharge: String = "prueba"
    @State var transferNumber: String = "123456"
    @State var amountRecharge: String = "1"
    @State var steptwo: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
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
                        TextLabelRecharge()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    CountryRechargeTextField()
                    FirstViewCountryRecharge()
                    ConceptoRechargeTextField(conceptRecharge: self.$conceptRecharge)
                    TransferRechargeTextField(transferNumber: self.$transferNumber)
                    AmountRechargeTextField(amountRecharge: self.$amountRecharge)
                    Button(action: {
                        let amount_aux : Float = Float(amountRecharge) ?? 0
                        let BankIDRecharge = Constant.defaults.value(forKey: "BankIDRecharge") as? String ?? ""
                        let ProductIDRecharge = Constant.defaults.value(forKey: "ProductIDRecharge") as? String ?? ""

                        
                        let alert = ShowAlert()
                        
                        if(ProductIDRecharge.isEmpty || BankIDRecharge.isEmpty || amountRecharge.isEmpty || conceptRecharge.isEmpty || transferNumber.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                        }
                        else if(amount_aux <= 0){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("invalidAmount", comment: "") )
                        }else{
                            Constant.defaults.setValue(conceptRecharge, forKey: "conceptRe")
                            Constant.defaults.setValue(transferNumber, forKey: "transferRe")
                            Constant.defaults.setValue(amountRecharge, forKey: "amountRe")
                        
                            
                            
                            stepNex()
                        }
                 
                    }) {
                        RechargeButtonContent()
                    }
                    VStack{
                        NavigationLink(destination: RechargeConfirmationView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            RechargeBackButtonContent()
                        }
                    }
            
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}
struct CountryRechargeTextField: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Seleccione el pais")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
        }
    }
}
struct TextLabelRecharge: View {
    var body: some View {
        Text("ManualRecharge")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct ConceptoRechargeTextField: View {
    @Binding var conceptRecharge: String
    var body: some View {
        FloatingLabelTextField($conceptRecharge, placeholder: "Concepto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct TransferRechargeTextField: View {
    @Binding var transferNumber: String
    var body: some View {
        FloatingLabelTextField($transferNumber, placeholder: "Número de Transferencia", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct AmountRechargeTextField: View {
    @Binding var amountRecharge: String
    var body: some View {
        FloatingLabelTextField($amountRecharge, placeholder: "Monto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct RechargeButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("ProcessRecharge")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
    }
}

struct RechargeBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom)
    }
}


struct RechargeView_Previews: PreviewProvider {
    static var previews: some View {
        RechargeView()
    }
}
