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
            }.navigationBarTitle("Volver", displayMode: .inline)
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
        //ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,30)
                        VStack(alignment: .leading) {
                            Spacer()
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
                                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        TextLabelInfomationPaymen()
                            .padding(.horizontal)
                            .fixedSize(horizontal: false, vertical: true)
                        TaxAmountTextField(amount: self.$amount)
                        ConceptTextField(concept: self.$concept)
                        NavigationLink(destination: OperationsKeyView()) {
                            ContinueButtonContents()
                        }
                        NavigationLink(destination: TransferenceView()) {
                            BackButtonContent()
                        }
                        Spacer()
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/8.2)
            }
        //}
    }
}

struct TextLabelInformation: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Información de la cuenta de destino")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}



struct TextLabelInfomationPaymen: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Complete la informacion del pago")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding()
        }
    }
}

struct TaxAmountTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: "Monto", editingChanged: { (isChanged) in
        }) {}
            .leftView({ // Add left view.
                Image("")
            })
            .placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
    }
}

struct ConceptTextField: View {
    @Binding var concept: String
    var body: some View {
        FloatingLabelTextField($concept, placeholder: "Concepto", editingChanged: { (isChanged) in
        }) {}
            .leftView({ // Add left view.
                Image("")
            })
            .placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
    }
}

struct ContinueButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Continuar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct TargetCustomerView_Previews: PreviewProvider {
    static var previews: some View {
        TargetCustomerView()
    }
}

 func Ejecutar2(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
