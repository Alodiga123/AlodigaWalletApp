//
//  SuccesfulTransactionView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccesfulTransactionView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccesfulTransactionViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct SuccesfulTransactionViewAccess: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen", "Fecha", "Transaccion"]
    
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelSuccesfulTransaction()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        TransferenceCheckImagine()
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
                            EndButtonContents()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            ShareButtonContents()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelSuccesfulTransaction: View {
    var body: some View {
        Text("Transacción Exitosa")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct EndButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalizar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}


struct ShareButtonContents: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Compartir")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct TransferenceCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}


struct SuccesfulTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesfulTransactionView()
    }
}

