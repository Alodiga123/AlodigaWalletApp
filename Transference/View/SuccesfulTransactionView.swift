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
            }.navigationBarTitle("Back", displayMode: .inline)
        }
    }
}


struct SuccesfulTransactionViewAccess: View {
    @State var text = ""
    @State var jsonUserByEmail : ObjectGetUsuarioByEmail?
    @State var jsonUserByMovil : ObjectGetUsuarioByMovil?
    @State var option =  Constant.defaults.value(forKey: "optionTransference") as! String
    @State var isTransfereceProcess: Bool = false
    let currencySelect = Constant.defaults.object(forKey: "currencySelected") as? [String: String] ?? [String: String]()
    @State var userDestinationID : String = ""
    
    
    func isTransfereceProcessIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isTransfereceProcess = true
        }
    }
    
    func getJSONUser() {
        
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
                            
                            
                            HStack {
                                Text("Date")
                                    .frame(width: 80, alignment: .leading)
                                    .font(.caption)
                                TextField(Constant.defaults.value(forKey: "fechaHoraTransference") as! String, text: self.$text)
                                    .font(.caption)
                            }
                            
                            HStack {
                                Text("Transaction")
                                    .frame(width: 80, alignment: .leading)
                                    .font(.caption)
                                TextField(Constant.defaults.value(forKey: "idTransactionTransference") as! String, text: self.$text)
                                    .font(.caption)
                            }
                            
                        }.onAppear(
                            perform: getJSONUser
                        )
                        
                        
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        
            
                        NavigationLink(destination: MainViewLogged()) {
                            EndButtonContents()
                        }
                       // NavigationLink(destination: MainViewLogged()) {
                         //   ShareButtonContents()
                        //}
                        Button(action: {
                            share(items: ["Prueba"])
                        }) {
                            ShareButtonContents()
                        }
                    }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        
    }
}
func shareByWhatsapp(msg:String){
        let urlWhats = "whatsapp://send?text=\(msg)"
        if let urlString = urlWhats.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            if let whatsappURL = NSURL(string: urlString) {
                if UIApplication.shared.canOpenURL(whatsappURL as URL) {
                    UIApplication.shared.openURL(whatsappURL as URL)
                } else {

                    let alert = UIAlertController(title: NSLocalizedString("Whatsapp not found", comment: "Error message"),
                                                  message: NSLocalizedString("Could not found a installed app 'Whatsapp' to proceed with sharing.", comment: "Error description"),
                                                  preferredStyle: UIAlertController.Style.alert)

                    alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "Alert button"), style: UIAlertAction.Style.default, handler:{ (UIAlertAction)in
                    }))

                    UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion:nil)
                    // Cannot open whatsapp
                }
            }
        }
}

@discardableResult
func share(
    items: [Any],
    excludedActivityTypes: [UIActivity.ActivityType]? = nil
) -> Bool {
    guard let source = UIApplication.shared.windows.last?.rootViewController else {
        return false
    }
    let vc = UIActivityViewController(
        activityItems: items,
        applicationActivities: nil
    )
    vc.excludedActivityTypes = excludedActivityTypes
    vc.popoverPresentationController?.sourceView = source.view
    source.present(vc, animated: true)
    return true
}

struct SuccesfulTransactionViewAccess2: View {
    @State var text = ""
    let labels = ["Nombre", "Apellido", "Telefono", "Destino", "Monto", "Concepto", "Origen", "Fecha", "Transaccion"]
    
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

struct TextLabelSuccesfulTransaction: View {
    var body: some View {
        Text("SuccesfulTransaction")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct EndButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalize")
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
        Text("Share")
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

