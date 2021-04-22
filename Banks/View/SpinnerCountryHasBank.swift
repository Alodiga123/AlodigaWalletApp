//
//  SpinnerCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 21/04/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI

struct CountryBankTextField: View {
    @State var countriesHasBak : [CountryHasBank] = []
    @State var jsonCountryHasBank : ObjetcCountryHasBank?
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("SelectCountry")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            CountryHasBankList()
        }
    }
}

struct CountryHasBankList: View {
    @State var isSheetOpened = false
    @State var selectedCountryHasBank = CountryHasBank()
    @State var countriesHasBank : [CountryHasBank] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountryHasBank : ObjetcCountryHasBank?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                code = selectedCountryHasBank.id
            }) {
                Text("\(selectedCountryHasBank.alternativeName3)")
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
                    paisTieneBanco(countriesHasBank: self.countriesHasBank, isSheetOpened: self.isSheetOpened, selectedCountryHasBank: self.$selectedCountryHasBank)
                }
            //line
            BanksByCountryTextField()
            if (!selectedCountryHasBank.id.isEmpty){
                BanksByCountryList(idCountryHasBank: self.$selectedCountryHasBank.id)
            }
            
        }.onAppear(
            perform: getJSONCountry
        )
    }
    
    func getJSONCountry() {
        let countryHasBankController = BankController()
        let countryHasBankMovil = AL_GetCountriesHasBank()
        
        countryHasBankMovil.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String;
        
        countryHasBankController.getCountryHasBank(generarCountryHasBank: countryHasBankMovil) { (res,error) in
            self.jsonCountryHasBank = res! as ObjetcCountryHasBank
            self.countriesHasBank = res!.envelope.body.countryHasBankResponse._return.countries
        }
    }
}

struct paisTieneBanco: View {
    var countriesHasBank : [CountryHasBank]
    var isSheetOpened : Bool
    @Binding var selectedCountryHasBank: CountryHasBank
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countriesHasBank, id: \.self) { index in
                    Button(action: {
                        self.selectedCountryHasBank = index
                        
                        let countryHasBankSelected = ["idCountryBank" : index.id,
                                               "nameCountryBank" : index.name,
                                               "codeCountryBans" : index.code]
                        Constant.defaults.set(countryHasBankSelected, forKey: "countryHasBankSelected")

                        
                        self.presentationMode.wrappedValue.dismiss()
                        
                        /*Constant.defaults.setValue(index.name, forKey: "nameCountryRe")
                        Constant.defaults.setValue(index.id, forKey: "idCountryRe")
                        Constant.defaults.setValue(index.code, forKey: "codeCountryRe")*/
                        print("Cod Country Has Bank: " + index.code)
                        print("Id Country Has Bank: " + index.id)
                    }) {
                        Text(index.alternativeName3)
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
