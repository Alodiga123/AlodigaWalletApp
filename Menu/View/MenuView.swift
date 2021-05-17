//
//  MenuView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/29/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//
import SwiftUI

struct MenuView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "cart.badge.plus")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: RechargeView()) {
                        Text("Recharge")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 100)
                
                HStack {
                    Image(systemName: "wallet.pass")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    bancoRetiro()
                }
                .padding(.top, 10)
                
                HStack {
                    Image(systemName: "gear")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: TransferenceView()) {
                        Text("Transference")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 10)
                
                /*HStack {
                    Image(systemName: "bahtsign.square.fill")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: BankView()) {
                        Text("AddBank")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 10)*/
            }
            
            HStack {
                Image(systemName: "qrcode")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: PaymentBusinessesQRView()) {
                    Text("PaymentBusinessesQR")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            }
            .padding(.top, 10)
            
          /*  HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: SecurityQuestionsView()) {
                    Text("SecurityQuestions")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            }
            .padding(.top, 10)*/
            
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: ChangePasswordView()) {
                        Text("ChangePass")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 10)
                
                HStack {
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: ValidateAccountFirstView()) {
                        Text("ValidateAccount")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 10)
                
                HStack {
                    Image(systemName: "pip.remove")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    cerrarSesión()
                }
                .padding(.top, 10)
                Spacer()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct cerrarSesión: View {
    @State var showAlert = false
    @State var isLoggedIn: Bool = false
    var util = Utils()

    func login(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isLoggedIn = true
        }
    }
    
    var alert: Alert {
        Alert(
            title: Text("Cerrar Sesión"),
            message: Text("¿Esta seguro que desea cerrar la sesión?"),
            primaryButton: .default (Text("OK")) {
                        print("Presionando OK")
                util.resetDefaults()
                login()
             
                      },
            secondaryButton: .cancel()
            
        )
    }
    
    var body: some View {
      Button(action: {
        self.showAlert.toggle()
      }) {
        Text("SignOff")
      }
      .alert(isPresented: $showAlert, content: { self.alert })
        
        NavigationLink(destination: LoginView(), isActive:self.$isLoggedIn){
            EmptyView()
        }
    }
}

struct bancoRetiro: View{
    @State var steptwo: Bool = false
    @State var banks : [AccountBanks] = []
    @State var jsonBank : ObjectAccountBankByUser?
    @State var bank = 0
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
        }
    }
    
    var body: some View {
        Button(action: {
            let withdrawalControler = WithdrawalControler()
            withdrawalControler.getAccountBankByUser(){ (res,error) in
                if res != nil {
                    self.jsonBank = res! as ObjectAccountBankByUser
                    self.banks = res!.envelope.body.AccountBankByUserResponse._return.accountBanks!
                }
                
                if error != nil {
                    print ("El ERROR DEL MENU!!!!")
                    print(error!)
                    
                    if (error == "304"){
                        print ("En el ERROR 304 DEL MENU!!!!")
                        self.bank = 1
                    }
                }
                stepNex()
            }
        }) {
            Text("Withdrawal")
                .foregroundColor(.gray)
                .font(.headline)
        
            if (self.bank == 1) {
                NavigationLink(destination: BankView(), isActive: self.$steptwo ){
                    EmptyView()
                }
            }else{
                NavigationLink(destination: WithdrawalView(), isActive: self.$steptwo ) {
                    EmptyView()
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
