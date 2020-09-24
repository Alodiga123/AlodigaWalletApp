//
//  WithdrawalView.swift
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
                        TextLabelWithdrawal()
                    }
                    CountryWithdrawalTextField(country: self.$country)
                    BankWithdrawalTextField(bank: self.$bank)
                    ProductWithdrawalTextField(product: self.$product)
                    AcountNumberTextField(acount: self.$acount)
                    AmountWithdrawalTextField(amount: self.$amount)
                    DescriptionTextField(description: self.$description)
                    NavigationLink(destination: WithdrawalConfirmationView()) {
                        WithdrawalButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        WithdrawallBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelWithdrawal: View {
    var body: some View {
        Text("Retiro Manual")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
            .padding(.leading,20)
            .padding(.trailing,20)
    }
}

struct CountryWithdrawalTextField: View {
    @Binding var country: String
    var body: some View {
        FloatingLabelTextField($country, placeholder: "País", editingChanged: { (isChanged) in
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

struct BankWithdrawalTextField: View {
    @Binding var bank: String
    var body: some View {
        FloatingLabelTextField($bank, placeholder: "Banco", editingChanged: { (isChanged) in
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

struct ProductWithdrawalTextField: View {
    @Binding var product: String
    var body: some View {
        FloatingLabelTextField($product, placeholder: "Producto", editingChanged: { (isChanged) in
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

struct AmountWithdrawalTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: "Número de Cuenta", editingChanged: { (isChanged) in
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
            .padding(.bottom,0)
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
            .padding(.top)
    }
}

struct WithdrawallBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Atras")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,10)
    }
}

struct WithdrawalView_Previews: PreviewProvider {
    static var previews: some View {
        WithdrawalView()
    }
}
