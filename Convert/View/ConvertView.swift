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
            }.navigationBarTitle("Convertir", displayMode: .inline)
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
                        Spacer()
                        TextLabelConvert()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    ProductOriTextField(productOrigin: self.$productOrigin)
                    ProductTarTextField(productTarget: self.$productTarget)
                    AmountTextField(amount: self.$amount)
                    HStack{
                        Button(action: toggle) {
                            Image(systemName: isChecked ? "checkmark.square" : "square")
                                .padding(.leading)
                        }
                        TextLabelCommission()
                        .padding()
                        Spacer()
                    }
                    NavigationLink(destination: CommissionView()) {
                        NextButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelConvert: View {
    var body: some View {
        Text("Convertir")
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

struct TextLabelCommission: View {
    var body: some View {
        Text("Incluir comisión en monto")
            .font(.callout)
            //.fontWeight(.bold)
            .foregroundColor(.gray)
    }
}

struct NextButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Siguiente")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ConvertView_Previews: PreviewProvider {
    static var previews: some View {
        ConvertView()
    }
}
