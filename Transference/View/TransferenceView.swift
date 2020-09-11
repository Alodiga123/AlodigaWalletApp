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
       
        NavigationView {
       


        NavigationLink(destination: Transference2View()) {
            //prueba de cambio
            // pruba de cambios
            Text("proxima pantalla")
            
        }
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
