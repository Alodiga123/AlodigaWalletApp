//
//  MenuView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/29/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//
import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "gear")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: RechargeView()) {
                    Text("Recargar")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                
            }
            .padding(.top, 100)
            HStack {
                Image(systemName: "gear")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: WithdrawalView()) {
                    Text("Retiro")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: TransferenceView()) {
                    Text("Transferencia")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: TopUpView()) {
                    Text("TopUp")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: PaymentBusinessesQRView()) {
                    Text("Pago Comercio QR")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Pagar")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "faceid")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                NavigationLink(destination: SignUpView()) {
                    Text("Registrate")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
