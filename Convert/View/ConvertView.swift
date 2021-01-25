//
//  ConvertView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/21/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ConvertView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ConvertViewAccess()
                }
            }.navigationBarTitle("Convert", displayMode: .inline)
        }
    }
}

struct ConvertViewAccess: View {
    @State var isChecked:Bool = false
    @State var productOrigin: String = ""
    @State var productTarget: String = ""
    @State var amount: String = ""
    func toggle(){isChecked = !isChecked}
    
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
                        TextLabelConvert()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    ProductOriTextField(productOrigin: self.$productOrigin)
                    ProductTarTextField(productTarget: self.$productTarget)
                    AmountConvertTextField(amount: self.$amount)
                    HStack{
                        Button(action: self.toggle) {
                            Image(systemName: self.isChecked ? "checkmark.square" : "square")
                                .padding(.leading)
                        }
                        TextLabelCommission()
                        .padding()
                        Spacer()
                    }
                    NavigationLink(destination: CommissionView()) {
                        ConvertNextButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        ConvertBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelConvert: View {
    var body: some View {
        Text("Convert")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct ProductOriTextField: View {
    @Binding var productOrigin: String
    var body: some View {
        FloatingLabelTextField($productOrigin, placeholder: "Seleccione el Producto de Origen", editingChanged: { (isChanged) in
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

struct ProductTarTextField: View {
    @Binding var productTarget: String
    var body: some View {
        FloatingLabelTextField($productTarget, placeholder: "Seleccione el Producto de Destino", editingChanged: { (isChanged) in
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

struct AmountConvertTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: "Monto", editingChanged: { (isChanged) in
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

struct TextLabelCommission: View {
    var body: some View {
        Text("IncludeCommission")
            .font(.callout)
            //.fontWeight(.bold)
            .foregroundColor(.gray)
    }
}

struct ConvertNextButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Next")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ConvertBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}

struct ConvertView_Previews: PreviewProvider {
    static var previews: some View {
        ConvertView()
    }
}
