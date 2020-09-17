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
            }.navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}

struct TransferenceViewAccess: View {
    @State var user: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        Spacer()
                        TextLabelTransference()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    Spacer()
                    TextLabelCurrency()
                    TextLabelUserR()
                    EmailTextField(user: self.$user)
                    NavigationLink(destination: TargetCustomerView()) {
                        SerchButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        BackButtonContent()
                    }
                    .padding()
                    Spacer()
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/3.2)
        }
    }
}



struct TextLabelTransference: View {
    var body: some View {
        Text("Transferencia")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelCurrency: View {
    var body: some View {
        Text("Seleccione la moneda a transferir")
            .font(.caption)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding()
    }
}

struct TextLabelUserR: View {
    var body: some View {
        Text("Seleccione el criterio de busqueda del usuario receptor")
            .font(.caption)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding()
    }
}


struct EmailTextField: View {
    @Binding var user: String
    var body: some View {
        FloatingLabelTextField($user, placeholder: "Introducir Email", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("email")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top)
            .padding(.bottom,0)
    }
}

struct SerchButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Buscar")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct BackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Atras")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
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
