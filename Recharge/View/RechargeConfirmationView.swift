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
    let labels = ["Pais", "Banco", "Producto", "Concepto", "Transf No", "Monto"]
    
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
                    
                    NavigationLink(destination: SucesfullRechargeView()) {
                        RechargeProcessButtonContent()
                    }
                    NavigationLink(destination: RechargeView()) {
                        RechargeBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
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
