//
//  SecondView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/31/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import SwiftUI

struct MainViewLogged: View {
    @State var showMenu = false
    var json : ObjectLogin? = nil
    var body: some View {
        ZStack{
            lista( jsonLogin: json)
            
        }
        
        
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                
                ShowMainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width/2)
                        .transition(.move(edge: .leading))
                }
                }
            
            .gesture(
                    DragGesture()
                        .onEnded {
                            if $0.translation.width < -100 {
                                withAnimation {
                                    self.showMenu = false
                                }
                            }
                        }
                )
            .navigationBarTitle("Second View", displayMode: .inline)
            .navigationBarItems(leading:
                HStack {
                    Text("")
                }, trailing:
                HStack {
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                            }
                        })
                        {
                            Text("...")
                        }
                }
                                
                               
            )
            
        }
        
    }
}



struct lista: View{
    @State var products : [ListadoProductos] = []
    var loginController = LoginController()
    @State var jsonLogin : ObjectLogin?
    
    var body: some View{
        VStack{
        if (products.isEmpty){
            EmptyView()
            Text("Esta vacia llamar al cargando")
        }else{
            List(products){product in
                rowView(user: product)
            }
            
        }
        
        }.onAppear(
        perform: getJSONLogin
        )
                
    }
    
    func getJSONLogin() {
        var objetResponse: ObjectLogin
        let str: String = Constant.defaults.value(forKey: "jsonLogin") as! String
        do {
            objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: str.data(using: .utf8)!)
            print("OBJETO DECODE")
            print(objetResponse)

            self.jsonLogin = objetResponse
            self.products = objetResponse.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos
        } catch  {
            print("Error: decodificando json")
        }
        
    }
    
    
    func getJSONLoginTODO() {
        let loginAplicacionMovil = LoginAplicacionMovil()
        loginAplicacionMovil.cpMovil = "kerwin2821@gmail.com"
        loginAplicacionMovil.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
        loginAplicacionMovil.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
        loginAplicacionMovil.cpIp = "192.168.3.20"
        loginAplicacionMovil.cpEmail = "kerwin2821@gmail.com"
        //Falta desencriptar
        loginAplicacionMovil.cpCredencial = "1234"
        loginController.getLogin(dataUser: loginAplicacionMovil) { (res,error) in
            self.jsonLogin = res! as ObjectLogin
            self.products = res!.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos
        }
        
    }
    
}



struct rowView : View{
    var user : ListadoProductos
    var body: some View {
        
        Text(user.nombreProducto)
        Text(user.saldoActual)
        Text(user.simbolo)
        
    }
    
}


struct ShowMainView: View {
    @Binding var showMenu: Bool
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
     }) {
         Text("Show Menu")
     }
   }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewLogged()
    }
}
