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
}

struct CountryBanksList: View {
    @State var isSheetOpened = false
    @State var selectedCountryBank = Country()
    @State var countries : [Country] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountry?
    @State var code: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                code = selectedCountryBank.id
            }) {
                Text("\(selectedCountryBank.alternativeName3)")
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
                    paisesBanks(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountryBank: self.$selectedCountryBank)
                }
            //line
            BanksTextField()
            if (!selectedCountryBank.id.isEmpty){
                BankWithdrawalList(idCountry: self.$selectedCountryBank.id)
            }
            
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

struct paisesBanks: View {
    var countries : [Country]
    var isSheetOpened : Bool
    @Binding var selectedCountryBank: Country
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countries, id: \.self) { index in
                    Button(action: {
                        self.selectedCountryBank = index
                        
                        let countrySelectedBank = ["idCountryBank" : index.id,
                                               "nameCountryBank" : index.name,
                                               "codeCountryBans" : index.code]
                        Constant.defaults.set(countrySelectedBank, forKey: "countrySelectedBank")

                        
                        self.presentationMode.wrappedValue.dismiss()
                        
                        /*Constant.defaults.setValue(index.name, forKey: "nameCountryRe")
                        Constant.defaults.setValue(index.id, forKey: "idCountryRe")
                        Constant.defaults.setValue(index.code, forKey: "codeCountryRe")*/
                        print("codigo Pais: " + index.code)
                        print("Id Pais: " + index.id)
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
