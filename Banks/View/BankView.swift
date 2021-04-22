//
//  RechargeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 21/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct BankView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    BankViewAccess()
                }
            }.navigationBarTitle("Bank", displayMode: .inline)
        }
    }
}

struct BankViewAccess: View {
    @State var accountNumber: String = "123456789"
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
                        TextLabelBank()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    CountryBankTextField()
                    AccountTypeBankTextField()
                    AccountNumberTextField(accountNumber: self.$accountNumber)
                    Button(action: {
                        let alert = ShowAlert()
                        let accountNumber_aux : Int = Int(accountNumber) ?? 0
                        
                        if(accountNumber.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                        }
                        else if(accountNumber_aux <= 20){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("invalidAmount", comment: "") )
                        }else{
                            Constant.defaults.setValue(accountNumber, forKey: "accountNumber")
                            
                            stepNex()
                        }
                 
                    }) {
                        BankButtonContent()
                    }
                    VStack{
                        NavigationLink(destination: SucesfullBankView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            BankBackButtonContent()
                        }
                    }
            
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelBank: View {
    var body: some View {
        Text("AddBank")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct AccountNumberTextField: View {
    @Binding var accountNumber: String
    var body: some View {
        FloatingLabelTextField($accountNumber, placeholder: "Número de Cuenta", editingChanged: { (isChanged) in
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

struct BankButtonContent: View {
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

struct BankBackButtonContent: View {
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


struct BankView_Previews: PreviewProvider {
    static var previews: some View {
        BankView()
    }
}
