//
//  SpinnerCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 18/04/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation
import SwiftUI

struct CountryRechargeTextField: View {
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

struct CountryRechargelList: View {
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
                code = selectedCountry.id
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
                    paisesRe(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountry: self.$selectedCountry)
                }
            //line
            BanksRechargeTextField()
            if (!selectedCountry.id.isEmpty){
                BankWithdrawalList(idCountry: self.$selectedCountry.id)
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

struct paisesRe: View {
    var countries : [Country]
    var isSheetOpened : Bool
    @Binding var selectedCountry: Country
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.countries, id: \.self) { index in
                    Button(action: {
                        self.selectedCountry = index
                        
                        let countrySelected = ["idCountryRe" : index.id,
                                               "nameCountryRe" : index.name,
                                               "codeCountryRe" : index.code]
                        Constant.defaults.set(countrySelected, forKey: "countrySelected")

                        
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
