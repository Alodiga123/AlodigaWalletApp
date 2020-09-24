//
//  SucesfullRechargeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SucesfullRechargeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SucesfullRechargeViewAccess()
                }
            }.navigationBarTitle("Resumen", displayMode: .inline)
        }
    }
}

struct SucesfullRechargeViewAccess: View {
    @State var text = ""
    let labels = ["Pais", "Banco", "Producto", "Concepto", "Transf No", "Monto"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack (alignment: .center, spacing: 5) {
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelSucesfullRecharge()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    RechargeCheckImagine()
                    ForEach(self.labels, id: \.self) { label in
                        HStack {
                            Text(label)
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(label, text: self.$text)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    NavigationLink(destination: MainViewLogged()) {
                        RechangeEndButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        RechangeShareButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelSucesfullRecharge: View {
    var body: some View {
        Text("Recarga Exitosa")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct RechargeCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}

struct RechangeEndButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalizar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top)
    }
}

struct RechangeShareButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Compartir")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,10)
    }
}

struct SucesfullRechargeView_Previews: PreviewProvider {
    static var previews: some View {
        SucesfullRechargeView()
    }
}
