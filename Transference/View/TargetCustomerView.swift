//
//  TargetCustomerView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/9/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TargetCustomerView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TargetCustomerViewAccess()
                }
            }.navigationBarTitle("Back", displayMode: .inline)
        }
    }
}


struct TargetCustomerViewAccess: View {
    @State var text = ""
    @State var amount: String = ""
    @State var concept: String = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Origen"]
    let label2 = ["Monto", "Concepto"]
   
    
    
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                    
                        
                        let currencySelect = Constant.defaults.object(forKey: "currencySelected") as? [String: String] ?? [String: String]()

                        
                        Text("Prueba OJOOO  " + currencySelect["nombreProducto"]!)
                        
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,30)
                        VStack(alignment: .leading) {
                            TextLabelTransference()
                        }.padding(.leading,20)
                         .padding(.trailing,20)
                        TextLabelInformation()
                        ForEach(self.labels, id: \.self) { label in
                            HStack {
                                Text(label)
                                    .frame(width: 50, alignment: .leading)
                                    .font(.caption)
                                TextField(label, text: self.$text)
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        TextLabelInfomationPaymen()
                        TransferenceAmountTextField(amount: self.$amount)
                        TransferenceConceptTextField(concept: self.$concept)
                        NavigationLink(destination: OperationsKeyView()) {
                            TransferenceSerchButtonContent()
                        }
                        NavigationLink(destination: TransferenceView()) {
                            TransferenceBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelInformation: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("DestinationAccount")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TextLabelInfomationPaymen: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("PaymentInformation")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TransferenceAmountTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: "Monto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,10)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct TransferenceConceptTextField: View {
    @Binding var concept: String
    var body: some View {
        FloatingLabelTextField($concept, placeholder: "Concepto", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,10)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct TargetCustomerView_Previews: PreviewProvider {
    static var previews: some View {
        TargetCustomerView()
    }
}
