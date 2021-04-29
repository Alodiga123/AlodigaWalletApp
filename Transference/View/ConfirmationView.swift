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
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ConfirmationViewAccess: View {
    @State var text = ""
    @State var jsonUserByEmail : ObjectGetUsuarioByEmail?
    @State var jsonUserByMovil : ObjectGetUsuarioByMovil?
    @State var option =  Constant.defaults.value(forKey: "optionTransference") as! String
    @State var isTransfereceProcess: Bool = false
    let currencySelect = Constant.defaults.object(forKey: "currencySelected") as? [String: String] ?? [String: String]()
    @State var userDestinationID : String = ""
    @State var progress = false
    var loading = Loading()

    
    
    func isTransfereceProcessIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isTransfereceProcess = true
        }
    }
    
    func getJSONUser() {
      //  loading.loadindView()

        //let option = Constant.defaults.value(forKey: "optionTransference") as! String
        
        if self.option == "0" {
            var objetResponse: ObjectGetUsuarioByEmail
            let str: String = Constant.defaults.value(forKey: "jsonUserByEmail") as! String
            do {
                objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByEmail.self, from: str.data(using: .utf8)!)
                print("OBJETO DECODE")
                print(objetResponse)
                self.userDestinationID = objetResponse.envelope.body.getUsuarioByEmailResponse._return.datosRespuesta.UsuarioID!
                self.jsonUserByEmail = objetResponse
            } catch  {
                print("Error: decodificando json Get usuario")
            }
        }
        
        if self.option == "1" {
            var objetResponse: ObjectGetUsuarioByMovil
            let str: String = Constant.defaults.value(forKey: "jsonUserByMovil") as! String
            do {
                objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByMovil.self, from: str.data(using: .utf8)!)
                print("OBJETO DECODE")
                print(objetResponse)
                self.userDestinationID = objetResponse.envelope.body.getUsuarioByMovilResponse._return.datosRespuesta.UsuarioID ?? ""
                self.jsonUserByMovil = objetResponse
            } catch  {
                print("Error: decodificando json")
            }
        }
       // loading.loadingDismiss()

    }
    
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
                        TextLabelInformation()
                        /*ForEach(self.labels, id: \.self) { label in
                         HStack {
                         Text(label)
                         .frame(width: 60, alignment: .leading)
                         .font(.caption)
                         TextField(label, text: self.$text)
                         .font(.caption)
                         }
                         }*/
                        
                        VStack{
                            HStack {
                                Text("Name")
                                    .frame(width: 80, alignment: .leading)
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
                                    .frame(width: 80, alignment: .leading)
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
                                    .frame(width: 80, alignment: .leading)
                                    .font(.caption)
                                if (option == "0"){
                                    TextField((jsonUserByEmail?.envelope.body.getUsuarioByEmailResponse._return.datosRespuesta.movil ?? "Phone"), text: self.$text)
                                        .font(.caption)
                                }else{
                                    TextField((jsonUserByMovil?.envelope.body.getUsuarioByMovilResponse._return.datosRespuesta.movil ?? "Phone"), text: self.$text)
                                        .font(.caption)
                                }
                            }
                            
                           /* if self.progress{
                                GeometryReader{_ in
                                    Loader()
                                }//.background(Color.white.opacity(10))
                            }*/
                            
                          
                            HStack {
                                let util = Utils()
                                Text("Destination")
                                    .frame(width: 80, alignment: .leading)
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
                                Text("Monto")
                                    .frame(width: 80, alignment: .leading)
                                    .font(.caption)
                                TextField( Constant.defaults.value(forKey: "amount") as! String, text: self.$text)
                                    .font(.caption)
                            }
                            
                            HStack {
                                Text("Concepto")
                                    .frame(width: 80, alignment: .leading)
                                    .font(.caption)
                                TextField(Constant.defaults.value(forKey: "concept") as! String, text: self.$text)
                                    .font(.caption)
                            }
                            
                       
                            HStack {
                                Text("Origin")
                                    .frame(width: 80, alignment: .leading)
                                    .font(.caption)
                                TextField(currencySelect["nombreProducto"]!, text: self.$text)
                                    .font(.caption)
                            }
                        }.onAppear(
                            perform: getJSONUser
                        )
                        
                        
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        
                      
                     
                        
                        Button(action: {
                            loading.loadindView()
                            let saveTransferBetweenAccount = AL_SaveTransferBetweenAccount()
                            saveTransferBetweenAccount.cpCryptogramUserSource = "1"
                            saveTransferBetweenAccount.cpEmailUser = Constant.defaults.value(forKey: "emailUser") as! String
                            saveTransferBetweenAccount.cpProductId = currencySelect["id"]
                            saveTransferBetweenAccount.cpAmountTransfer = Constant.defaults.value(forKey: "amount")  as! String
                            saveTransferBetweenAccount.cpConceptTransaction = Constant.defaults.value(forKey: "concept") as! String
                            saveTransferBetweenAccount.cpCryptogramUserDestination = "1"
                            saveTransferBetweenAccount.cpIdUserDestination = self.userDestinationID
                            
                            let controller = TransferenceController()
                        
                            //self.progress.toggle()
                            controller.proccesTransference(saveTransferBetweenAccount: saveTransferBetweenAccount) { (res, error) in
                                loading.loadingDismiss()
                                if(res != nil){
                                    //self.progress.toggle()
                                    self.isTransfereceProcessIn()
                                }
                                
                                if error != nil {
                                    loading.loadingDismiss()
                                    //self.progress.toggle()
                                    let alert = ShowAlert()
                                    alert.showPaymentModeActionSheet(title: "error", message: controller.getMessageErrorProcessTransference(code: error!))
                                    print(error!)
                                }
                                
                            }
                            
                            
                        }) {
                            ProcessButtonContents()
                        }.padding(3)
                        
                        
                        NavigationLink(destination: SuccesfulTransactionView(), isActive:self.$isTransfereceProcess){
                            EmptyView()
                        }
                        
                        /*NavigationLink(destination: SuccesfulTransactionView()) {
                            ProcessButtonContents()
                        }*/
                        
                        
                        
                        NavigationLink(destination: OperationsKeyView()) {
                            TransferenceBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        
    }
}

struct TextLabelConfirmnation: View {
    var body: some View {
        Text("Confirmation")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct ProcessButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Process")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,18)
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}

