//
//  TransferenceView.swift
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
        //ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            Spacer()
                            TextLabelSuccesfulTransaction()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        CheckImagine()
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
                        Spacer()
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.top).padding(.bottom,geometry.size.height/8.2)
            }
        //}
    }
}

extension UIColor{
    struct Custom {
        static var black: UIColor{
            if #available(iOS 13, *) {
                return UIColor.init { (trait) -> UIColor in
                    return trait.userInterfaceStyle == .dark ? UIColor.white : UIColor.black
                }
            }
            return UIColor.black
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

struct CheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 120.0, weight: .light, design: .monospaced))
            .frame(width: 150, height: 120)
    }
}


struct SuccesfulTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesfulTransactionView()
    }
}

 func Ejecutar4(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
