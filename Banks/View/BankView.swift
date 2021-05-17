//
//  RechargeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 21/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct BankView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    BankViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct BankViewAccess: View {
    @State var accountNumber: String = "123456789"
    @State var steptwo: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
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
                        TextLabelBank()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    CountryTextField()
                    FirstViewCountryBank()
                    line
                    AccountTypeBankTextField()
                    
                    line
                    AccountNumberTextField(accountNumber: self.$accountNumber)
                    Button(action: {
                        let alert = ShowAlert()
                        let bankController = BankController()
                        let accountNumber_aux : Int = Int(accountNumber) ?? 0
                        let guardarBanco = AL_SaveAccountBankUser()
                        //Cargando
                        //let loading = Loading()
                        //loading.loadindView()
                        
                        if(accountNumber.isEmpty){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("EmptyFields", comment: ""))
                        }
                        else if(accountNumber_aux < 20){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("invalidAmount", comment: "") )
                        }else{
                            Constant.defaults.setValue(accountNumber, forKey: "accountNumber")
                            
                            guardarBanco.cpBankId = Constant.defaults.value(forKey: "BankIDBank") as! String
                            guardarBanco.cpUnifiedRegistryId = Constant.defaults.value(forKey: "usuarioID") as! String
                            guardarBanco.cpAccountNumber = accountNumber
                            guardarBanco.cpAccountTypeBankId = Constant.defaults.value(forKey: "accountTypeId") as! String
                            
                           
                            bankController.getGuardarBanco(guardarBancoUsuario: guardarBanco) { (res, error) in
                                //loading.loadingDismiss()
                                print("GUARDANDO BANCO!!!!")
                                if(res != nil){
                                   
                                    //loading.loadingDismiss()
                                    stepNex()
                                }
                                
                                if error != nil {
                                    //loading.loadingDismiss()
                                    let alert = ShowAlert()
                                    //loading.loadingDismiss()
                                    alert.showPaymentModeActionSheet(title: "error", message: bankController.getMessageError(code: error!))
                                    print(error!)
                                }
                            }
                        }
                 
                    }) {
                        BankButtonContent()
                    }
                    VStack{
                        NavigationLink(destination: SucesfullBankView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            BankBackButtonContent()
                        }
                    }
            
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct CountryTextField: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text(NSLocalizedString("selectcountry", comment: ""))
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
        }
    }
}

struct TextLabelBank: View {
    var body: some View {
        Text("AddBank")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct accounttextTextField: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text(NSLocalizedString("AccountNumber", comment: ""))
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
        }
    }
}
struct AccountNumberTextField: View {
    @Binding var accountNumber: String
    var body: some View {
        
        accounttextTextField()
        FloatingLabelTextField($accountNumber, placeholder: "", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct BankButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("AddBank")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
    }
}

struct BankBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom)
    }
}


struct BankView_Previews: PreviewProvider {
    static var previews: some View {
        BankView()
    }
}
