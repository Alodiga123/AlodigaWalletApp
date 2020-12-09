//
//  WithdrawalView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/17/20.
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
            }.navigationBarTitle("Retirement", displayMode: .inline)
        }
    }
}

struct WithdrawalViewAccess: View {
    @State var country: String = ""
    @State var bank: String = ""
    @State var product: String = ""
    @State var acount: String = ""
    @State var amount: String = ""
    @State var description: String = ""
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
                        TextLabelWithdrawal()
                    }
                    CountryWithdrawalTextField()
                    //CountryWithdrawalTextField(country: self.$country)
                    //BankWithdrawalTextField(bank: self.$bank)
                    AcountNumberTextField(acount: self.$acount)
                    AmountWithdrawalTextField(amount: self.$amount)
                    DescriptionTextField(description: self.$description)
//                    NavigationLink(destination: WithdrawalConfirmationView()) {
//                        WithdrawalButtonContent()
//                    }
                    
                    Button(action: {
                        let withdrawalControler = WithdrawalControler()
                        let productsByBank = AL_GetProductsByBankId()
                        let alert = ShowAlert()
                        let idCountry = Constant.defaults.value(forKey: "idCountry") as! String
                        
                        productsByBank.cpBankId = "1"
                        productsByBank.cpUserId = "379"
                        //bankByCountry.cpCountryId = "1"
                        
                        withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
                            if res != nil {
                                print("+++++++++++ OBJETO +++++++++++++++++")
                                print(res)
                            }
                            if error != nil {
                                let alert = ShowAlert()
                                alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                                print(error!)
                            }
                            
                            stepNex()
                         }
                 
                    }) {
                        WithdrawalButtonContent()
                    }
                    VStack{
                        NavigationLink(destination: WithdrawalConfirmationView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            WithdrawallBackButtonContent()
                        }
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
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

//struct CountryWithdrawalTextField: View {
//    @Binding var country: String
//    var body: some View {
//        FloatingLabelTextField($country, placeholder: "País", editingChanged: { (isChanged) in
//        }) {
//        }
//            .leftView({ // Add left view.
//                Image("")
//            }).placeholderColor(Color.placeholderGrayColor)
//            .frame(height: 40)
//            .padding(.leading,20)
//            .padding(.trailing,20)
//            .padding(.bottom,-1)
//    }
//}

//struct BankWithdrawalTextField: View {
//    @Binding var bank: String
//    var body: some View {
//        FloatingLabelTextField($bank, placeholder: "Banco", editingChanged: { (isChanged) in
//        }) {
//        }
//            .leftView({ // Add left view.
//                Image("")
//            }).placeholderColor(Color.placeholderGrayColor)
//            .frame(height: 40)
//            .padding(.leading,20)
//            .padding(.trailing,20)
//            .padding(.bottom,-1)
//    }
//}

//struct ProductWithdrawalTextField: View {
//    @Binding var product: String
//    var body: some View {
//        FloatingLabelTextField($product, placeholder: "Producto", editingChanged: { (isChanged) in
//        }) {
//        }
//            .leftView({ // Add left view.
//                Image("")
//            }).placeholderColor(Color.placeholderGrayColor)
//            .frame(height: 40)
//            .padding(.leading,20)
//            .padding(.trailing,20)
//            .padding(.bottom,-1)
//    }
//}

struct AcountNumberTextField: View {
    @Binding var acount: String
    var body: some View {
        FloatingLabelTextField($acount, placeholder: "Número de Cuenta", editingChanged: { (isChanged) in
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
        FloatingLabelTextField($amount, placeholder: "Número de Cuenta", editingChanged: { (isChanged) in
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
        FloatingLabelTextField($description, placeholder: "Descripción", editingChanged: { (isChanged) in
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


struct CountryWithdrawalTextField: View {
    @State var countries : [Country] = []
    @State var jsonCountry : ObjectCountry?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("SelectCountry")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            CountryWithdrawalList()
        }
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let countryMovil = AL_GetCountries()
        
        registerController.getCountry(generarCodigoCountry: countryMovil) { (res,error) in
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
        }
    }
}

struct BankWithdrawalTextField: View {
    @Binding var id: String
    @State var banks : [BankByCountry] = []
    @State var jsonBank : ObjectBankByCountry?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Selecciona el Banco")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            BankWithdrawalList(id: $id)
        }
    }
    
    func getJSONBank() {
        let withdrawalControler = WithdrawalControler()
        let bankByCountry = AL_GetBankByCountryApp()
        let idCountry = Constant.defaults.value(forKey: "idCountry") as! String
        
        bankByCountry.cpCountryId = idCountry
        
        withdrawalControler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
            self.jsonBank = res! as ObjectBankByCountry
            self.banks = res!.envelope.body.bankByCountryResponse._return.banks
        }
    }
}

struct ProductWithdrawalTextField: View {
    @Binding var id: String
    @State var products : [ProductsByBank] = []
    @State var jsonProduct : ObjectProductsByBank?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Selecciona el Producto")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            ProductsWithdrawalList(id: $id)
        }
    }
    
    func getJSONProducts() {
        let withdrawalControler = WithdrawalControler()
        let productsByBank = AL_GetProductsByBankId()
        //let idCountry = Constant.defaults.value(forKey: "idCountry") as! String
        
        productsByBank.cpBankId = "1"
        productsByBank.cpUserId = "379"
        
        withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
            self.jsonProduct = res! as ObjectProductsByBank
            self.products = res!.envelope.body.productsByBankResponse._return.products
        }
    }
}

struct CountryWithdrawalList: View {
    @State var isSheetOpened = false
    @State var selectedCountry = Country()
    @State var countries : [Country] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountry?
    @State var code: String = ""
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedCountry.alternativeName3)")
                    //.fontWeight(.bold)
                    .foregroundColor(.gray)
                    .font(.callout) 
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                
                }.padding(10)
                .cornerRadius(10)
                .clipShape(Rectangle())
                .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
            .sheet(isPresented: self.$isSheetOpened) {
                paises(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountry: self.$selectedCountry)
            }
            BankWithdrawalTextField(id: $selectedCountry.id)
        }.onAppear(
            perform: getJSONCountry
        )
    }
    
    func getJSONCountry() {
        let registerController = RegisterController()
        let countryMovil = AL_GetCountries()
        
        registerController.getCountry(generarCodigoCountry: countryMovil) { (res,error) in
            self.jsonCountry = res! as ObjectCountry
            self.countries = res!.envelope.body.countryResponse._return.countries
        }
    }
}

struct BankWithdrawalList: View {
    @Binding var id: String
    @State var isSheetOpened = false
    @State var selectedBank = BankByCountry()
    @State var banks : [BankByCountry] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonBank : ObjectBankByCountry?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedBank.name)")
                    .foregroundColor(.gray)
                    .font(.callout)
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                
                }.padding(10)
                .cornerRadius(10)
                .clipShape(Rectangle())
                .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
            .sheet(isPresented: self.$isSheetOpened) {
                bancos(banks: self.banks, isSheetOpened: self.isSheetOpened, selectedBank: self.$selectedBank)
            }
            ProductWithdrawalTextField(id: $selectedBank.id)
        }.onAppear(
            perform: getJSONBank
        )
    }
    
    func getJSONBank() {
        let withdrawalControler = WithdrawalControler()
        let bankByCountry = AL_GetBankByCountryApp()
        //let idCountry = Constant.defaults.value(forKey: "idCountry") as! String
        
        bankByCountry.cpCountryId = "1"
        
        withdrawalControler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
            self.jsonBank = res! as ObjectBankByCountry
            self.banks = res!.envelope.body.bankByCountryResponse._return.banks
        }
    }
}

struct ProductsWithdrawalList: View {
    @Binding var id: String
    @State var isSheetOpened = false
    @State var selectedProducts = ProductsByBank()
    @State var products : [ProductsByBank] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonProducts : ObjectProductsByBank?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                
            }) {
                Text("\(selectedProducts.name + " " + selectedProducts.symbol + " " + selectedProducts.currentBalance)")
                    .foregroundColor(.gray)
                    .font(.callout)
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
                
                }.padding(10)
                .cornerRadius(10)
                .clipShape(Rectangle())
                .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
            .sheet(isPresented: self.$isSheetOpened) {
                productos(products: self.products, isSheetOpened: self.isSheetOpened, selectedProduct: self.$selectedProducts)
            }
        }.onAppear(
            perform: getJSONProducts
        )
    }
    
    func getJSONProducts() {
        let withdrawalControler = WithdrawalControler()
        let productsByBank = AL_GetProductsByBankId()
        //let idCountry = Constant.defaults.value(forKey: "idCountry") as! String
        
        productsByBank.cpBankId = "1"
        productsByBank.cpUserId = "379"
        
        withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
            self.jsonProducts = res! as ObjectProductsByBank
            self.products = res!.envelope.body.productsByBankResponse._return.products
        }
    }
}

struct bancos: View {
    var banks : [BankByCountry]
    var isSheetOpened : Bool
    @Binding var selectedBank: BankByCountry
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.banks, id: \.self) { index in
                    Button(action: {
                        self.selectedBank = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        Constant.defaults.setValue(index.name, forKey: "nameBank")
                        Constant.defaults.setValue(index.id, forKey: "idBank")
                        print("Nombre del Banco: "+index.name)
                        print("Id: " + index.id)
                        
                    }) {
                        Text(index.name)
                            .font(.callout)
                            .fontWeight(.bold)
                            .frame(width: 340, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct productos: View {
    var products : [ProductsByBank]
    var isSheetOpened : Bool
    @Binding var selectedProduct: ProductsByBank
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.products, id: \.self) { index in
                    Button(action: {
                        self.selectedProduct = index
                        self.presentationMode.wrappedValue.dismiss()
                        
                        let productSelected = ["id" : index.id,
                                    "name" : index.name,
                                    "current" : index.currentBalance,
                                    "symbol" : index.symbol]
                        Constant.defaults.set(productSelected, forKey: "productSelected")
                        
                        /*
                         /*
                         ForEach(self.products, id: \.self) { index in
                             Button(action: {
                                 self.selectedProduct = index
                                 
                                 let currencySelected = ["id" : index.id,
                                             "isPayTopUP" : index.isPayTopUP,
                                             "nombreProducto" : index.nombreProducto,
                                             "saldoActual" : index.saldoActual,
                                             "simbolo" : index.simbolo]
                                 Constant.defaults.set(currencySelected, forKey: "currencySelected")
                         */
                         */
                        
                        Constant.defaults.setValue(index.name, forKey: "nameBank")
                        Constant.defaults.setValue(index.id, forKey: "idBank")
                        print("Nombre del Producto: "+index.name)
                        print("Id: " + index.id)
                    }) {
                        Text(index.name + " " + index.symbol + " " + index.currentBalance)
                            .font(.callout)
                            .fontWeight(.bold)
                            .frame(width: 340, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct WithdrawalView_Previews: PreviewProvider {
    static var previews: some View {
        WithdrawalView()
    }
}
