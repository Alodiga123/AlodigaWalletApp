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
    var loginController = LoginController()
    @State var jsonUserByEmail : ObjectGetUsuarioByEmail?
    @State var jsonUserByMovil : ObjectGetUsuarioByMovil?
    @State var option =  Constant.defaults.value(forKey: "optionTransference") as! String
    @State var isConfirmData: Bool = false
    let currencySelect = Constant.defaults.object(forKey: "currencySelected") as? [String: String] ?? [String: String]()
    var loading = Loading()
   
    func getJSONUser() {
        //loading.loadindView()

        if self.option == "0" {
            var objetResponse: ObjectGetUsuarioByEmail
            let str: String = Constant.defaults.value(forKey: "jsonUserByEmail") as! String
            do {
                objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByEmail.self, from: str.data(using: .utf8)!)
                print("OBJETO DECODE")
                print(objetResponse)

                self.jsonUserByEmail = objetResponse
            } catch  {
                print("Error: decodificando json transference 1")
            }
        }
        
        if self.option == "1" {
            var objetResponse: ObjectGetUsuarioByMovil
            let str: String = Constant.defaults.value(forKey: "jsonUserByMovil") as! String
            do {
                objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByMovil.self, from: str.data(using: .utf8)!)
                print("OBJETO DECODE")
                print(objetResponse)

                self.jsonUserByMovil = objetResponse
            } catch  {
                print("Error: decodificando json")
            }
        }
        //loading.loadingDismiss()
    }

    
    func isConfirmDataIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isConfirmData = true
        }
    }
    
    var body: some View {
        
            GeometryReader { geometry in
                ZStack{
                    VStack (alignment: .center, spacing: 5) {
                    
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
                        //ForEach(self.labels, id: \.self) { label in
                        VStack{
                            HStack {
                                Text("Name")
                                    .frame(width: 50, alignment: .leading)
                                    .font(.caption)
                                
                                if (option == "0"){
                                    
                                    TextField((jsonUserByEmail?.envelope.body.getUsuarioByEmailResponse._return.datosRespuesta.nombre ??  "Name"), text: self.$text)
                                        .font(.caption)
                                }else{
                                    TextField((jsonUserByMovil?.envelope.body.getUsuarioByMovilResponse._return.datosRespuesta.nombre ??  "Name"), text: self.$text)
                                        .font(.caption)
                                }
                            }
                            
                            
                        HStack {
                            Text("LastName")
                                .frame(width: 50, alignment: .leading)
                                .font(.caption)
                            if (option == "0"){
                                TextField((jsonUserByEmail?.envelope.body.getUsuarioByEmailResponse._return.datosRespuesta.apellido ?? "LastName"), text: self.$text)
                                    .font(.caption)
                            }else{
                                TextField((jsonUserByMovil?.envelope.body.getUsuarioByMovilResponse._return.datosRespuesta.apellido ?? "LastName"), text: self.$text)
                                    .font(.caption)
                            }
                        }
                        
                        HStack {
                            Text("Phone")
                                .frame(width: 50, alignment: .leading)
                                .font(.caption)
                            if (option == "0"){
                                TextField((jsonUserByEmail?.envelope.body.getUsuarioByEmailResponse._return.datosRespuesta.movil ?? "Phone"), text: self.$text)
                                    .font(.caption)
                            }else{
                                TextField((jsonUserByMovil?.envelope.body.getUsuarioByMovilResponse._return.datosRespuesta.movil ?? "Phone"), text: self.$text)
                                    .font(.caption)
                            }
                        }
                        
                        HStack {
                            let util = Utils()
                            Text("Destination")
                                .frame(width: 50, alignment: .leading)
                                .font(.caption)
                            if (option == "0"){
                                
                                if(jsonUserByEmail != nil){
                                    TextField(util.getCuenta(cuenta: (jsonUserByEmail?.envelope.body.getUsuarioByEmailResponse._return.datosRespuesta.cuenta?.numeroCuenta)!), text: self.$text)
                                        .font(.caption)
                                }else{
                                    TextField("Destination", text: self.$text)
                                        .font(.caption)
                                }
                                
                              
                            }else{
                                if(jsonUserByMovil != nil){
                                    TextField(util.getCuenta(cuenta: (jsonUserByMovil?.envelope.body.getUsuarioByMovilResponse._return.datosRespuesta.cuenta?.numeroCuenta)!), text: self.$text)
                                        .font(.caption)
                                }else{
                                    TextField("Destination", text: self.$text)
                                        .font(.caption)
                                }
                            }
                        }
                        
                        HStack {
                            Text("Origin")
                                .frame(width: 50, alignment: .leading)
                                .font(.caption)
                            TextField(currencySelect["nombreProducto"] ?? "", text: self.$text)
                                .font(.caption)
                        }
                        }.onAppear(
                            perform: getJSONUser
                        )
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        TextLabelInfomationPaymen()
                        TransferenceAmountTextField(amount: self.$amount)
                        TransferenceConceptTextField(concept: self.$concept)
                        
                        let amount_aux : Float = Float(amount) ?? 0
                        let saldo1 = currencySelect["saldoActual"]! as String
                        let saldo : Float = Float(saldo1) ?? 0
                                                  
                        
                        Button(action: {
                            let alert = ShowAlert()
                            
                            if(amount.isEmpty || concept.isEmpty){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                            }
                            else if(amount_aux <= 0){
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("invalidAmount", comment: "") )
                            }else if(saldo < amount_aux ){
                                
                                alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("web_services_response_33", comment: "") )
                            }else{
                                Constant.defaults.setValue(amount, forKey: "amount")
                                Constant.defaults.setValue(concept, forKey: "concept")

                                self.isConfirmDataIn()
                                
                            }
                            
                        }) {
                            TransferenceSerchButtonContent()
                            
                        }.padding(3)
                        
                        
                        NavigationLink(destination: OperationsKeyView(), isActive:self.$isConfirmData){
                            EmptyView()
                        }
                        
                        
                        /*NavigationLink(destination: OperationsKeyView()) {
                            TransferenceSerchButtonContent()
                        }*/
                        
                        NavigationLink(destination: TransferenceView()) {
                            TransferenceBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
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
        
  
        FloatingLabelTextField($amount , placeholder: "Monto", editingChanged: { (isChanged) in
            amount = Double(amount) as? String ??  amount
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,10)
            .padding(.trailing,20)
        .padding(.bottom,-1).keyboardType(UIKeyboardType.decimalPad)
        .keyboardType(.decimalPad)
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
