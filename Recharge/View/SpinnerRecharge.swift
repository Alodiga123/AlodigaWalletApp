//
//  SpinnerCountryRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
//
//  SpinnerSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/15/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstViewCountryRecharge: View {
    @State var isSheetOpened = false
    @State var isSheetOpenedCountry = false
    @State var isSheetOpenedbank = false
    @State var ini : Bool = true



    
    @State var selectedCountry = CountryRechargeM()
    @State var countries : [CountryRechargeM] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountryRecharge?
    @State var code: String = ""
    
    //@Binding var idCountry: String
    @State var selectedBank = BankByCountryUS()
    @State var banks : [BankByCountryUS] = []
    @State var jsonBank : ObjectBankByCountryUS?
    
    //@Binding var idBank: String
    @State var selectedProducts = ProductsByBank()
    @State var products : [ProductsByBank] = []
    @State var jsonProducts : ObjectProductsByBank?

    @State var selectText : String = "Seleccione una opcion"

    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                getJSONCountry()
                self.selectedBank.name = ""
                self.selectedProducts.name = ""
                Constant.defaults.removeObject(forKey: "BankIDRecharge")
                Constant.defaults.removeObject(forKey: "ProductIDRecharge")


                self.isSheetOpenedCountry.toggle()
                }) {
                
                Text("\(selectedCountry.alternativeName3)").fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)
                    .frame(width: 340, alignment: .leading)
                
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
            }
            .padding(10)
            .cornerRadius(10)
            .clipShape(Rectangle())
            
            .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
            .sheet(isPresented: self.$isSheetOpenedCountry, onDismiss: {
               
            }) {
                SheetCountryRecharge(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountries: self.$selectedCountry)
            }
            
            
            
            ProductRechargeTextField()

            Button(action: {
                getJSONBank()
                self.selectedProducts.name = ""
                Constant.defaults.removeObject(forKey: "ProductIDRecharge")
                self.isSheetOpenedbank.toggle()
                }) {
                if(selectedBank.name.isEmpty){
                    Text("\(selectText)").fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                        .frame(width: 340, alignment: .leading)
                }else{
                    Text("\(selectedBank.name)").fontWeight(.bold)
                    .foregroundColor(.gray).font(.callout)
                .frame(width: 340, alignment: .leading)
                    
                }
              
                
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
            }
            .padding(10)
            .cornerRadius(10)
            .clipShape(Rectangle())
            
            .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
           
            .sheet(isPresented: self.$isSheetOpenedbank) {
                
                SheetbankRechargeCountry(banks: self.banks, isSheetOpened: self.isSheetOpened, selectedbank: self.$selectedBank)
            }
            
            
            ProductRechargeTextField()

            Button(action: {
                getJSONProducts()
                self.isSheetOpened.toggle()

                }) {
                
                if(selectedProducts.name.isEmpty){
                    Text("\(selectText)").fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                        .frame(width: 340, alignment: .leading)
                }else{
                    Text("\(selectedProducts.name + " " + selectedProducts.symbol + " - " + selectedProducts.currentBalance)").fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                        .frame(width: 340, alignment: .leading)
                    
                }
                
      
                
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
            }
            .padding(10)
            .cornerRadius(10)
            .clipShape(Rectangle())
            
            .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
            
           
            .sheet(isPresented: self.$isSheetOpened) {
                
                SheetproductsRecharge(products: self.products, isSheetOpened: self.isSheetOpened, selectedproduct:  self.$selectedProducts)
            }
            
 
        }.onAppear(
            perform: getJSONCountry)
    }
    struct BankRechargeTextField: View {
        
        var body: some View {
            VStack(alignment: .center, spacing: 5) {
                Text("Selecciona el banco")
                    .font(.callout)
                    .frame(width: 340, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
    }
    
    struct ProductRechargeTextField: View {
        
        var body: some View {
            VStack(alignment: .center, spacing: 5) {
                Text("Selecciona el Producto")
                    .font(.callout)
                    .frame(width: 340, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
    }

    func getJSONCountry() {
        let registerController = ResponseController()
        registerController.getCountriesHasBank() { (res,error) in
            
            if res != nil {
                self.jsonCountry = res! as ObjectCountryRecharge
                self.countries = res!.envelope.body.countryResponse._return.countries

                self.selectedCountry = countries[0]
                Constant.defaults.setValue(countries[0].id, forKey: "CountryIDRecharge")
               // getJSONBank()
               // getJSONProducts()
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                print(error!)
            }
        }
    }
    
    func getJSONBank() {
        let controler = ResponseController()
        let bankByCountry = AL_GetBankByCountryApp()
        
        bankByCountry.cpCountryId =  Constant.defaults.value(forKey: "CountryIDRecharge") as! String
        
        controler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
            if res != nil {
                self.jsonBank = res! as ObjectBankByCountryUS
                self.banks = res!.envelope.body.bankByCountryResponse._return.banks!
                self.selectedBank = banks[0]
                Constant.defaults.set(banks[0].id, forKey: "BankIDRecharge")
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: controler.getMessageError(code: error!))
                print(error!)
            }
        }
    }
    
  
    
    func getJSONProducts() {
        let withdrawalControler = WithdrawalControler()
        let productsByBank = AL_GetProductsByBankId()
        
        //if(!idBank.isEmpty){
            productsByBank.cpBankId = Constant.defaults.value(forKey: "BankIDRecharge") as! String
            productsByBank.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String
            
            withdrawalControler.getProductByBank(productosPorBancos: productsByBank){ (res,error) in
                        
                if res != nil {
                    self.jsonProducts = res! as ObjectProductsByBank
                    self.products = res!.envelope.body.productsByBankResponse._return.products
                    self.selectedProducts = products[0]
                    Constant.defaults.set(products[0].id, forKey: "ProductIDRecharge")
                }
                
                if error != nil {
                    let alert = ShowAlert()
                    alert.showPaymentModeActionSheet(title: "error", message: withdrawalControler.getMessageError(code: error!))
                    print(error!)
                }
            }
       // }
    }
}



struct SheetproductsRecharge: View {
    var products : [ProductsByBank]
    var isSheetOpened : Bool
    
    
    @Binding var selectedproduct: ProductsByBank
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            
            List {
                ForEach(self.products, id: \.self) { index in
            
                    Button(action: {
                        
                        self.selectedproduct = index
                        Constant.defaults.set(index.id, forKey: "ProductIDRecharge")

                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        
                        Text(index.name + " " + index.symbol + " - " + index.currentBalance).fontWeight(.bold)
                        //Text(index.name).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 310, alignment: .leading)
                    }
                        
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}
struct SheetbankRechargeCountry: View {
    var banks : [BankByCountryUS]
    var isSheetOpened : Bool
    
    
    @Binding var selectedbank: BankByCountryUS
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                
                
                ForEach(self.banks, id: \.self) { index in
            
                    Button(action: {
                        
                        self.selectedbank = index
                        Constant.defaults.set(index.id, forKey: "BankIDRecharge")

                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.name).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 310, alignment: .leading)
                    }
                        
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }

}
struct SheetCountryRecharge: View {
    var countries : [CountryRechargeM]
    var isSheetOpened : Bool
    
    
    @Binding var selectedCountries: CountryRechargeM
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countries, id: \.self) { index in
            
                    Button(action: {
                        
                        self.selectedCountries = index
                        Constant.defaults.setValue(index.id, forKey: "CountryIDRecharge")
                        //Constant.defaults.set(index.id, forKey: "countryRecharge")

                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.alternativeName3).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 310, alignment: .leading)
                    }
                        
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
    
}
