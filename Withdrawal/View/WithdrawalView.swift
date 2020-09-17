//
//  TransferenceView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct WithdrawalView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    WithdrawalViewAccess()
                }
            }.navigationBarTitle("Retiro", displayMode: .inline)
        }
    }
}

struct WithdrawalViewAccess: View {
    @State var country: String = ""
    @State var bank: String = ""
    @State var product: String = ""
    @State var acount: String = ""
    @State var amount: String = ""
    @State var description: String = ""
    
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
                        TextLabelWithdrawal()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    CountryTextField(country: self.$country)
                    BankTextField(bank: self.$bank)
                    ProductTextField(product: self.$product)
                    AcountNumberTextField(acount: self.$acount)
                    AmountTextField(amount: self.$amount)
                    DescriptionTextField(description: self.$description)
                    
                    NavigationLink(destination: WithdrawalConfirmationView()) {
                        WithdrawalButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/4.3)
        }
    }
}

struct TextLabelWithdrawal: View {
    var body: some View {
        Text("Retiro Manual")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct AcountNumberTextField: View {
    @Binding var acount: String
    var body: some View {
        FloatingLabelTextField($acount, placeholder: "Número de Cuenta", editingChanged: { (isChanged) in
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

struct DescriptionTextField: View {
    @Binding var description: String
    var body: some View {
        FloatingLabelTextField($description, placeholder: "Descripción", editingChanged: { (isChanged) in
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

struct WithdrawalButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Procesar Retiro")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
    }
}

struct WithdrawalView_Previews: PreviewProvider {
    static var previews: some View {
        WithdrawalView()
    }
}
