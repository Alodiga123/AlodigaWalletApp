//
//  ValidateAccountFirstView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ValidateAccountFirstView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ValidateAccountFirstViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ValidateAccountFirstViewAccess: View {
        
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack(alignment: .center){
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .center) {
                        TextLabelValidateAccountFirst()
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    CircleImagine()
                    NavigationLink(destination: ValidateAdressView()) {
                    //NavigationLink(destination: TakePhotoView()) {
                        ValidateAccountButtonContent()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        ValidateBackButtonContent()
                    }
                }
                .padding(.horizontal)
                .background(Color.cardButtonViewGray)
                .frame(width: geometry.size.width, height: geometry.size.height/1.3, alignment: .top)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelValidateAccountFirst: View {
    var body: some View {
        Text("ValidateAccountAlodiga")
            .font(.body)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 300, height: 100)
            .padding(.bottom,30)
    }
}

struct ValidateAccountFirstView_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAccountFirstView()
    }
}
