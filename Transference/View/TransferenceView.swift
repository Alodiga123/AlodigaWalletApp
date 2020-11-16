//
//  TransferenceView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/31/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TransferenceView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TransferenceViewAccess()
                }
            }.navigationBarTitle("Transference", displayMode: .inline)
        }
    }
}

struct TransferenceViewAccess: View {
    @State var user: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelTransference()
                        }.padding(.leading,20)
                         .padding(.trailing,20)
                        TextLabelCurrency()
                        
                        
                        
                        TextLabelUserR()
                    
                       // NavigationLink(destination: TargetCustomerView()) {
                         //   TransferenceSerchButtonContent()
                       // }
                        NavigationLink(destination: MainViewLogged()) {
                            TransferenceBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelTransference: View {
    var body: some View {
        Text("Transference")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}


struct TextLabelCurrency: View {
    @State var products : [ListadoProductos] = []
    @State var jsonLogin : ObjectLogin?
    var line: some View {
        VStack { Divider().background(Color.fontBlackColor).border(Color.black, width: 5) }.padding(.bottom,10).frame(width: 380, alignment: .center)
       }
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("CurrencyTransfer")
                .font(.callout)
                .frame(width: 340, alignment: .leading)
                .foregroundColor(.gray)
                .padding()
            FirstView()
            line
            
        }
    }
}

struct TextLabelUserR: View {

    var body: some View {
        Text("SearchCriteria")
            .font(.callout)
            .frame(width: 340, height: 50, alignment: .leading)
            .foregroundColor(.gray)
        FirstViewSpinnerOption()
        
    }
}


struct EmailTextField: View {
    @Binding var user: String
    var body: some View {
        FloatingLabelTextField($user, placeholder: "", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("email")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
        
        //let currencySelect = Constant.defaults.object(forKey: "currencySelected") as? [String: String] ?? [String: String]()
        //Text("Prueba OJOOO  " + currencySelect["nombreProducto"]!)

    }
}

struct PhoneTextField: View {
    @Binding var user: String
    var body: some View {
        FloatingLabelTextField($user, placeholder: "Numero de Telefono", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("phone")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
        
    }
}


struct TransferenceSerchButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Search")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}


struct TransferenceQrButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("scanQr")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct TransferenceBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,15)
    }
}

struct TransferenceView_Previews: PreviewProvider {
    static var previews: some View {
        TransferenceView()
    }
}

