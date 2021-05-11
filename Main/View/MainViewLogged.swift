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
        
        GeometryReader { geometry in
            Spacer()
            ZStack(alignment: .leading) {
                VStack{
                ShowMainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height/2.3)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                    
                    lista( jsonLogin: json).frame(width: geometry.size.width, height: geometry.size.height/2.4).offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false).padding(.top,10).background(Color.colorMain)
                    
                    icon_qrView().frame(width: geometry.size.width, height: geometry.size.height/9.5).offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    
                }.background(Color.cardButtonViewGray)
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width/2)
                        .transition(.move(edge: .leading))
                }
            }.padding(.bottom,5)
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
                    Image(systemName: "lineweight")
                        .imageScale(.large)
                    }
                }
            ).navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
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
        VStack { Divider().background(Color.fontBlackColor).border(Color.black, width: 5) }.padding(.bottom,5)
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
            VStack{
                Rectangle()
                    .frame(width:50, height: 6, alignment: .center)
                    .cornerRadius(3.0)
                    .opacity(0.3)
                HStack{
                    VStack{
                        Image("logo_alodiga")
                            .resizable()
                            .clipShape(Rectangle())
                            .shadow(radius: 5)
                            .frame(width: 80, height: 80, alignment: Alignment.top)
                    }.transition(.move(edge: .top))
                    VStack (alignment: .leading, spacing: 6){
                        Text(Constant.defaults.value(forKey: "user") as! String).foregroundColor(Color.gray)
                        Text(Constant.defaults.value(forKey: "movil") as! String ).foregroundColor(Color.gray)
                        Text(Constant.defaults.value(forKey: "email") as! String).foregroundColor(Color.gray)
                    }
                }
            }}.padding(.top,20)
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

struct icon_qrView : View {
    
    @State var isQrButton: Bool = false
    
    
    func isQrButtonIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isQrButton = true
        }
    }
    var body: some View{
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.isQrButtonIn()
                }, label: {
                    Image("icon_qr")
                        .resizable()
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        .frame(width: 70, height: 70, alignment: Alignment.top)
                })
                .background(Color.blue)
                .cornerRadius(38.5)
                .padding(.trailing, 7)
                .padding(.top, 1)
                .padding(.bottom, 2)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
            }
            
        }
        NavigationLink(destination: PaymentBusinessesQRView(), isActive:self.$isQrButton){
            EmptyView()
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
        }.padding(.bottom,20)
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
        }.padding(.bottom,20)
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
        }.padding(.bottom,20)
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
        }.padding(.bottom,20)
    }
    
}

struct lista: View{
    
    
    @State var products : [ListadoProductos] = []
    var loginController = LoginController()
    @State var jsonLogin : ObjectLogin?
    @State var isPayment: Bool = false
    @State var isRechage: Bool = false
    @State var isTransferece: Bool = false
    @State var isWithdrawal: Bool = false
    
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
    
    var body: some View{
        ZStack{
            
            if (products.isEmpty){
                EmptyView()
                Text("Esta vacia llamar al cargando")
            }else{
                
                List(products){product in
                    
                    Button(action: {
                        let alert = ShowAlert()
                        
                        DispatchQueue.main.async {
                            
                            // create an actionSheet
                            let actionSheetController: UIAlertController = UIAlertController(title: NSLocalizedString("title_operations", comment: "") + " " + product.nombreProducto, message: nil, preferredStyle: .alert)
                            
                            if(product.isUsePrepaidCard != "true" ){
                                // create an action
                                let firstAction: UIAlertAction = UIAlertAction(title: NSLocalizedString("Recharge", comment: ""), style: .default) { action -> Void in
                                    self.isRechargeIn()
                                }
                                
                                let secondAction: UIAlertAction = UIAlertAction(title: NSLocalizedString("Withdrawal", comment: ""), style: .default) { action -> Void in
                                    self.isWithdrawalIn()
                                }
                                
                                let thirdAction: UIAlertAction = UIAlertAction(title: NSLocalizedString("Transference", comment: ""), style: .default) { action -> Void in
                                    self.isTransfereceIn()
                                }
                                
                                let fourthAction: UIAlertAction = UIAlertAction(title: NSLocalizedString("PaymentBusinessesQR", comment: ""), style: .default) { action -> Void in
                                    self.isPaymentIn()
                                }
                                
                            
                                let cancelAction: UIAlertAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel) { action -> Void in }
                                
                                // add actions
                                actionSheetController.addAction(firstAction)
                                actionSheetController.addAction(secondAction)
                                actionSheetController.addAction(thirdAction)
                                actionSheetController.addAction(fourthAction)

                                actionSheetController.addAction(cancelAction)
                                
                                
                                UIApplication.shared.windows.first?.rootViewController?.present(actionSheetController, animated: true) {
                                    print("option menu presented")
                                }
                                
                            }else{
                                
                                /*let firstAction: UIAlertAction = UIAlertAction(title: "En proceso", style: .default) { action -> Void in
                                 self.isWithdrawalIn()
                                 print("First Action pressed")
                                 }
                                 let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }
                                 
                                 actionSheetController.addAction(firstAction)
                                 actionSheetController.addAction(cancelAction)*/
                                alert.showAlert(title: "", message: "En proceso")
                            }
                            
                            // present an actionSheet...
                            // present(actionSheetController, animated: true, completion: nil)   // doesn't work for iPad
                            
                            //actionSheetController.popoverPresentationController?.sourceView = "yourSourceViewName" // works for both iPhone & iPad
                            
                            
                            
                        }
                        
                        
                        
                    }) {
                        rowView(user: product)
                    }
                }
                NavigationLink(destination: PaymentBusinessesQRView(), isActive:self.$isPayment){
                    EmptyView()
                }
        
                
                NavigationLink(destination: RechargeView(), isActive:self.$isRechage){
                    EmptyView()
                }
                
                NavigationLink(destination: TransferenceView(), isActive:self.$isTransferece){
                    EmptyView()
                }
   
                
                NavigationLink(destination: WithdrawalView(), isActive:self.$isWithdrawal){
                    EmptyView()
                }
                
            }
        }
        .colorMultiply(Color.colorMain)
        .onAppear(
            perform: getProduct
        )
    }
    
    func getProduct()  {
        let util = Utils()
        self.products = util.getProductSession()
    }
    
    func getJSONLogin() {
        var objetResponse: ObjectLogin
        let str: String = Constant.defaults.value(forKey: "jsonLogin") as! String
        do {
            objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: str.data(using: .utf8)!)
            print("OBJETO DECODE")
            print(objetResponse)
            
            self.jsonLogin = objetResponse
            self.products = objetResponse.envelope.body.aplicacionMovilResponse._return.datosRespuesta.respuestaListadoProductos!
        } catch  {
            print("Error: decodificando json")
        }
    }
}

struct rowView : View{
    var user : ListadoProductos
    var imageURL:UIImageView!
    let util = Utils()
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image("tp")
                    .resizable()
                    .clipShape(Rectangle())
                    .shadow(radius: 5)
                    .frame(width: 50, height: 50)
            }.padding(.trailing,20).padding(.leading,5)
            
            VStack(alignment: .leading){
                HStack{
                    Spacer().overlay(VStack(alignment: .leading){
                        
                        Text(user.nombreProducto).foregroundColor(Color.gray)
                        
                        if (user.nombreProducto == "Tarjeta Prepagada" || user.nombreProducto == "Prepaid Card") {
                            
                            Text(util.getCuenta(cuenta: Constant.defaults.value(forKey: "numberCard") as! String)).foregroundColor(Color.gray).font(.caption)
                        }else{
                            
                            
                            Text(util.getCuenta(cuenta: Constant.defaults.value(forKey: "numeroCuenta") as! String)).foregroundColor(Color.gray).font(.caption)
                        }
                        
                        
                    })
                    
                    Spacer().overlay(VStack(alignment: .leading){
                        
                        if (user.nombreProducto == "Tarjeta Prepagada" || user.nombreProducto == "Prepaid Card") {
                            Spacer()
                            Spacer()
                            
                        }else{
                            Text(user.simbolo + " " + user.saldoActual).foregroundColor(Color.gray)
                            Text("Alodiga").foregroundColor(Color.gray).font(.caption)
                        }
                    })
                }
                
            }
            
            
            
        }.frame(width: UIScreen.main.bounds.size.width - 40, height: 70).background(Color.white).cornerRadius(10)
        
    }
    
    /* func getCuenta(cuenta : String) -> String {
     
     return cuenta.prefix(4) + "*********" + String(cuenta.dropFirst(cuenta.count - 4))
     }*/
    
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
            mainHead().padding(.top, 5)
        }
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewLogged()
    }
}
