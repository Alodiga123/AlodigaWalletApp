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
        //mainHead()

        //lista( jsonLogin: json)
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                VStack{
                ShowMainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                lista( jsonLogin: json).frame(width: geometry.size.width, height: geometry.size.height/3).offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
            }
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
            .navigationBarTitle("Menu Principal", displayMode: .inline)
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
        }.background(Color.cardButtonViewGray)
        
        
    }
}




struct mainHead : View {
    var json : ObjectLogin? = nil
    @State private var animationStarted = false
    @State var isPayment: Bool = false
    @State var isRechage: Bool = false
    @State var isTransferece: Bool = false
    @State var isWithdrawal: Bool = false

    var line: some View {
        VStack { Divider().background(Color.fontBlackColor).border(Color.black, width: 5) }.padding(5)
       }
    
    func isPaymentIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isPayment = true
        }
    }
    
    func isRechargeIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isRechage = true
        }
    }
    
    func isTransfereceIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isTransferece = true
        }
    }
    
    func isWithdrawalIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isWithdrawal = true
        }
    }

    var body : some View {
        ZStack{
            HStack{
                VStack{
                    Image("logo_alodiga")
                        .resizable()
                        .clipShape(Rectangle())
                        .shadow(radius: 5)
                        .frame(width: 80, height: 80, alignment: Alignment.top)
                }.animation(Animation.easeInOut)
                VStack (alignment: .leading, spacing: 6){
                    Text(Constant.defaults.value(forKey: "user") as! String)
                    Text(Constant.defaults.value(forKey: "movil") as! String )
                    Text(Constant.defaults.value(forKey: "email") as! String)

                }
            }
        }
        line
        ZStack{
            HStack{
                
                //Boton remesas
                Button(action: {
                    self.isPaymentIn()
                }) {
                    send_money_button()
                }.padding(3)
                
                
                NavigationLink(destination: remittancesStep1(), isActive:self.$isPayment){
                    EmptyView()
                }
                
                //Boton recargar
                Button(action: {
                    self.isRechargeIn()
                }) {
                    send_recharge_button()
                }.padding(3)
                
                
                NavigationLink(destination: RechargeView(), isActive:self.$isRechage){
                    EmptyView()
                }
                
                //Boton transferir
                Button(action: {
                    self.isTransfereceIn()
                }) {
                    send_transference_button()
                }.padding(3)
                
                
                NavigationLink(destination: TransferenceView(), isActive:self.$isTransferece){
                    EmptyView()
                }
                
                //boton retirar
                Button(action: {
                    self.isWithdrawalIn()
                }) {
                    send_withdrawal_button()
                }.padding(3)
                
                
                NavigationLink(destination: WithdrawalView(), isActive:self.$isWithdrawal){
                    EmptyView()
                }
               
 
            }
        }
    }
}

struct send_money_button : View {
    var body: some View{
        VStack{
            VStack{
                Image("send_money")
                    .resizable()
                    .clipShape(Rectangle())
                    .frame(width: 55, height: 70, alignment: Alignment.top).padding(10)
            }.background(Color.white, alignment: .center)
            .clipShape(Rectangle())
            .cornerRadius(20)
            Text("menu_send_money").font(.caption)
                .foregroundColor(Color.greenMenu)
        }
    }
    
}

struct send_recharge_button : View {
    var body: some View{
        VStack{
            VStack{
                Image("recharge")
                    .resizable()
                    .clipShape(Rectangle())
                    .frame(width: 50, height: 70, alignment: Alignment.top).padding(10)
            }.background(Color.white, alignment: .center)
            .clipShape(Rectangle())
            .cornerRadius(20)
            Text("reload").font(.caption)
                .foregroundColor(Color.yellowMenu)
        }
    }
    
}

struct send_transference_button : View {
    var body: some View{
        VStack{
            VStack{
                Image("transference")
                    .resizable()
                    .clipShape(Rectangle())
                    .frame(width: 55, height: 70, alignment: Alignment.top).padding(10)
            }.background(Color.white, alignment: .center)
            .clipShape(Rectangle())
            .cornerRadius(20)
            Text("menu_transfer").font(.caption)
                .foregroundColor(Color.orangeMenu)
        }
    }
    
}

struct send_withdrawal_button : View {
    var body: some View{
        VStack{
            VStack{
                Image("withdrawal")
                    .resizable()
                    .clipShape(Rectangle())
                    .frame(width: 55, height: 70, alignment: Alignment.top).padding(10)
            }.background(Color.white, alignment: .center)
            .clipShape(Rectangle())
            .cornerRadius(20)
            Text("aoutMoney").font(.caption)
                .foregroundColor(Color.violetMenu)
        }
    }
    
}

struct lista: View{
    @State var products : [ListadoProductos] = []
    var loginController = LoginController()
    @State var jsonLogin : ObjectLogin?
    
    var body: some View{
        ZStack{
            if (products.isEmpty){
                EmptyView()
                Text("Esta vacia llamar al cargando")
            }else{
                List(products){product in
                    rowView(user: product)
                }
                
            }
        }.background(Color.cardButtonViewGray)
        .onAppear(
            perform: getJSONLogin
        ).lineSpacing(3)
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
}

struct rowView : View{
    var user : ListadoProductos
    var imageURL:UIImageView!

    var body: some View {
        VStack{
            HStack{
                Image("email")
                    .resizable()
                    .clipShape(Rectangle())
                    .shadow(radius: 5)
                    .frame(width: 50, height: 50, alignment: Alignment.top)
                    
                Text(user.nombreProducto)
            }
            
            HStack{
                Text(user.saldoActual)
                Text(user.simbolo)
            }
        }.onAppear(perform: getImage)
        
    }
    
    func getImage(){
        let url = NSURL(string:"http://cdn.businessoffashion.com/site/uploads/2014/09/Karl-Lagerfeld-Self-Portrait-Courtesy.jpg")
        let data = NSData(contentsOf:url! as URL)
        if data! == nil {
            self.imageURL.image = UIImage(data:data! as Data)
        }
    }
}

struct ShowMainView: View {
    @Binding var showMenu: Bool
    var json : ObjectLogin? = nil

    var body: some View {
        VStack{
            Rectangle()
                .frame(width:50, height: 6)
                .cornerRadius(3.0)
                .opacity(0.3)
                .padding(.top,0)
            mainHead()
            
        }
   }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewLogged()
    }
}
