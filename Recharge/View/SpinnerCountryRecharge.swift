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
    @State var selectedCountry = CountryRechargeM()
    @State var countries : [CountryRechargeM] = []
    @State var expand = false
    @State var separador: String = ""
    @State var jsonCountry : ObjectCountryRecharge?
    @State var code: String = ""

    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()

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
            
           
            .sheet(isPresented: self.$isSheetOpened) {
                
                SheetCountryRecharge(countries: self.countries, isSheetOpened: self.isSheetOpened, selectedCountries: self.$selectedCountry)
            }
            
            BankRechargeTextField()
            if (!selectedCountry.id.isEmpty){
                FirstViewBankRecharge(idCountry: self.$selectedCountry.id)
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
    func getJSONCountry() {
        let registerController = ResponseController()
        registerController.getCountriesHasBank() { (res,error) in
            
            if res != nil {
                self.jsonCountry = res! as ObjectCountryRecharge
                self.countries = res!.envelope.body.countryResponse._return.countries
                self.selectedCountry = countries[0]
                Constant.defaults.setValue(countries[0].id, forKey: "CountryIDRecharge")
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: registerController.getMessageError(code: error!))
                print(error!)
            }
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


