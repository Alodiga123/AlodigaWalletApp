//
//  WithdrawalView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 30/05/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct WithdrawalView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    WithdrawalViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct WithdrawalViewAccess: View {
    @State var country: String = ""
    @State var bank: String = "1"
    @State var product: String = ""
    @State var acount: String = "123"
    @State var amount: String = "100"
    @State var description: String = "p"
    let productSelected = Constant.defaults.object(forKey: "productSelected") as? [String: String] ?? [String: String]()
    @State var steptwo: Bool = false
    var loading = Loading()
    
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
                        TextLabelWithdrawal()
                    }
                    FirstViewBank()
                    BankWithdrawalList()
                    AmountWithdrawalTextField(amount: self.$amount)
                    DescriptionTextField(description: self.$description)
                    Button(action: {
                        let withdrawalControler = WithdrawalControler()
                        let retiroManual = AL_ManualWithdrawals()
                        let alert = ShowAlert()
                        let amount_aux: Float = Float(amount) ?? 0
                        //let saldo1 = productSelected["saldoActual"]! as String
                        //let saldo: Float = Float(saldo1) ?? 0
                        //loading.loadindView()
                        
                        if(amount.isEmpty || amount.count == 0 || description.isEmpty || description.count == 0 ){
                            alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("ValidationInvalidLong", comment: ""))
                        }else if(amount.count < 3){
                            alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("invalidAmount", comment: ""))
                        }else if(amount_aux <= 0){
                            alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("invalidAmount", comment: ""))
                        /*}else if(saldo < amount_aux ){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("web_services_response_33", comment: "") )*/
                        }else{
                            let BankIdWithdrawal = Constant.defaults.value(forKey: "BankIDW") as? String ?? ""
                            let ProductIdWithdrawal = Constant.defaults.value(forKey: "ProductIDW") as? String ?? ""
                            
                            retiroManual.cpBankId = BankIdWithdrawal
                            retiroManual.cpEmailUser = Constant.defaults.value(forKey: "emailUser") as! String
                            retiroManual.cpAmountWithdrawal = amount
                            retiroManual.cpProductId = ProductIdWithdrawal
                            retiroManual.cpConceptTransaction = description
                            retiroManual.cpDocumentTypeId = "8"
                            retiroManual.cpOriginApplicationId = "1"
                        }
                        
                        withdrawalControler.getManualWithdrawals(retirosManuales: retiroManual){ (res,error) in
                            print("EN LA VISTA DEL RETIRO!!!!")
                            if res != nil  {
                                print(res as Any)
                                let retiro: ObjectManualWithdrawals
                                retiro = res! as ObjectManualWithdrawals
                                print(retiro.envelope.body.ManualWithdrawalsResponse._return.fechaHora)
                                //loading.loadingDismiss()

                                stepNex()
                            }
                            
                            if error != nil {
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                                print(error!)
                                //loading.loadingDismiss()
                            }

                            stepNex()
                         }
                        //stepNex()
                 
                    }) {
                        WithdrawalButtonContent()
                    }
                    VStack{
                        NavigationLink(destination: SucesfullWithdrawalView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            WithdrawallBackButtonContent()
                        }
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelWithdrawal: View {
    var body: some View {
        Text("ManualWithdrawal")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
            .padding(.leading,20)
            .padding(.trailing,20)
    }
}

struct WithdrawalBankTextField: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Seleccione la cuenta bancaria donde desea retirar los fondos")
                .font(.body)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 80, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top,0)
        }
    }
}

struct AccountNumTextField: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Numero de cuenta")
                .font(.body)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 50, alignment: .leading)
                .foregroundColor(.gray)
                .padding(.top,0)
        }
    }
}

struct AccountTypeTextField: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Tipo de Cuenta")
                .font(.body)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 50, alignment: .leading)
                .foregroundColor(.gray)
                .padding(.top,0)
        }
    }
}

struct AcountNumberTextField: View {
    @Binding var acount: String
    var body: some View {
        FloatingLabelTextField($acount, placeholder: NSLocalizedString("AccountNumber", comment: ""), editingChanged: { (isChanged) in
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

struct AmountWithdrawalTextField: View {
    @Binding var amount: String
    var body: some View {
        FloatingLabelTextField($amount, placeholder: NSLocalizedString("EnterAmount", comment: ""), editingChanged: { (isChanged) in
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

struct DescriptionTextField: View {
    @Binding var description: String
    var body: some View {
        FloatingLabelTextField($description, placeholder: NSLocalizedString("Description", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct WithdrawalButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("ProcessWithdrawal")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top)
    }
}

struct WithdrawallBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,10)
    }
}

struct WithdrawalView_Previews: PreviewProvider {
    static var previews: some View {
        WithdrawalView()
    }
}
