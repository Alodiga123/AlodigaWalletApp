//
//  SpinnerCountryRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 28/04/21.
//  Copyright © 2021 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstViewCountryBank: View {
    @State var isSheetOpened = false
    @State var isSheetOpenedCountry = false
    @State var isSheetOpenedbank = false
    @State var ini : Bool = true
    @State var noValueProduct : Bool = false
    @State var selectedCountry = CountryHasBank()
    @State var countries : [CountryHasBank] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjetcCountryHasBank?
    @State var code: String = ""
    @State var selectedBank = BankByCountryUS()
    @State var banks : [BankByCountryUS] = []
    @State var jsonBank : ObjectBankByCountryUS?
    @State var selectText : String =  NSLocalizedString("selectoption", comment: "")

    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                getJSONCountry()
                self.selectedBank.name = ""
                Constant.defaults.removeObject(forKey: "BankIDRecharge")

                self.isSheetOpenedCountry.toggle()
                }) {
                
                if(selectedCountry.name.isEmpty){
                    Text("\(selectText)")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .font(.callout)
                        .frame(width: 290, alignment: .leading)
                }else{
                    Text("\(selectedCountry.alternativeName3)")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .font(.callout)
                        .frame(width: 290, alignment: .leading)
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
            .sheet(isPresented: self.$isSheetOpenedCountry, onDismiss: {
               
            }) {
                SheetCountryBank(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountries: self.$selectedCountry)
            }
            line
            SelectBankTextField()

            Button(action: {
                getJSONBank()
                self.isSheetOpenedbank.toggle()
                }) {
                    if(selectedBank.name.isEmpty){
                        Text("\(selectText)")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 290, alignment: .leading)
                    }else{
                        Text("\(selectedBank.name)")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 290, alignment: .leading)
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
        }.onAppear(
            perform: getJSONCountry)
    }
    
    struct SelectBankTextField: View {
        
        var body: some View {
            VStack(alignment: .center, spacing: 5) {
               
                Text( NSLocalizedString("selectbank", comment: ""))
                    .font(.callout)
                    .frame(width: 340, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
    }
    
 
    func getJSONCountry() {
        let bankController = BankController()
        //Cargando
        let loading = Loading()
        loading.loadindView()
        bankController.getCountryHasBank() { (res,error) in
            
            if res != nil {
                self.jsonCountry = res! as ObjetcCountryHasBank
                self.countries = res!.envelope.body.countryHasBankResponse._return.countries

                self.selectedCountry = countries[0]
                Constant.defaults.setValue(countries[0].id, forKey: "CountryIDBank")
                //Cargando
                loading.loadingDismiss()
            }
            
            if error != nil {
                self.selectedCountry.name = ""
                self.selectedBank.name = ""
                Constant.defaults.removeObject(forKey: "CountryIDBank")
                Constant.defaults.removeObject(forKey: "BankIDbank")
                loading.loadingDismiss()
                print(error!)
            }
        }
    }
    
    func getJSONBank() {
        let controler = BankController()
        let bankByCountry = AL_GetBankByCountryApp()
        bankByCountry.cpCountryId =  Constant.defaults.value(forKey: "CountryIDBank") as? String ?? ""
        if(bankByCountry.cpCountryId != nil){
            controler.getBankByCountry(bancosPorPais: bankByCountry){ (res,error) in
                
                if res != nil {
                    self.jsonBank = res! as ObjectBankByCountryUS
                    self.banks = res!.envelope.body.bankByCountryResponse._return.banks!
                    self.selectedBank = banks[0]
                    Constant.defaults.set(banks[0].id, forKey: "BankIDBank")
                }
                
                if error != nil {
                    self.selectedBank.name = ""
                    Constant.defaults.removeObject(forKey: "BankIDBank")
                    print(error!)
                }
            }
        }
    }
}

struct SheetbankCountry: View {
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
                        Constant.defaults.set(index.id, forKey: "BankIDBank")

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


struct SheetCountryBank: View {
    var countries : [CountryHasBank]
    var isSheetOpened : Bool
        
    @Binding var selectedCountries: CountryHasBank
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countries, id: \.self) { index in
                    Button(action: {
                        
                        self.selectedCountries = index
                        Constant.defaults.setValue(index.id, forKey: "CountryIDBank")

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
