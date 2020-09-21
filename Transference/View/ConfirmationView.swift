//
//  ConfirmationView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ConfirmationView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ConfirmationViewAccess()
                }
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct ConfirmationViewAccess: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen"]
    
    var body: some View {
        //ScrollView{
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
                        TextLabelInformation()
                        ForEach(self.labels, id: \.self) { label in
                            HStack {
                                Text(label)
                                    .frame(width: 60, alignment: .leading)
                                    .font(.caption)
                                TextField(label, text: self.$text)
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        
                        NavigationLink(destination: SuccesfulTransactionView()) {
                            ProcessButtonContents()
                            
                        }
                        NavigationLink(destination: OperationsKeyView()) {
                            BackButtonContent()
                        }
                        Spacer()
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/4.2)
            }
        //}
    }
}

struct TextLabelConfirmnation: View {
    var body: some View {
        Text("Confirmación")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct ProcessButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Procesar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}

 func Ejecutar3(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
