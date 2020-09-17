//
//  TransferenceView.swift
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
            }.navigationBarTitle("Confimación", displayMode: .inline)
        }
    }
}

struct WithdrawalConfirmationViewAccess: View {
    @State var text = ""
    let labels = ["Pais", "Banco", "Producto", "Cuenta", "Monto", "Descripción"]
    
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
                        TextLabelConfirmnation()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    TextLabelInfWithdrawal()
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
                    
                    NavigationLink(destination: SucesfullWithdrawalView()) {
                        ProcessButtonContents()
                        
                    }
                    NavigationLink(destination: WithdrawalView()) {
                        BackButtonContent()
                    }
                    Spacer()
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/4.2)
        }
    }
}


struct TextLabelInfWithdrawal: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Información del Retiro")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct WithdrawalConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        WithdrawalConfirmationView()
    }
}
