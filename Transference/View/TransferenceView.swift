//
//  TransferenceView.swift
//  AlodigaWalletApp
//
//  Created by Kerwin Gomez on 8/31/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import SwiftUI

struct TransferenceView: View {
    var body: some View {
       
        
        NavigationLink(destination: LoginView()) {
            //prueba de cambio
            Text("salir")
        }
    }
}

struct TransferenceView_Previews: PreviewProvider {
    static var previews: some View {
        TransferenceView()
    }
}


 
 func Ejecutar(){
     DispatchQueue.main.asyncAfter(deadline: .now() ){
     }
 }
