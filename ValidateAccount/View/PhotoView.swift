//
//  PhotoView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct PhotoView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    PhotoViewAccess()
                }
            }.navigationBarTitle("Validar Cuenta", displayMode: .inline)
        }
    }
}

struct PhotoViewAccess: View {
        
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .center) {
                        TextLabelAccount()
                    }.padding(.leading,40)
                     .padding(.trailing,40)
                    Rectangle()
                        .frame(width:250, height: 250)
                        .cornerRadius(50)
                        .opacity(0.1)
                    NavigationLink(destination: StepTwoView()) {
                        NextValidateButtonContent()
                    }
                    NavigationLink(destination: TakePhotoView()) {
                        ValidateBackButtonContent()
                    }
                }.padding(.horizontal)
                .background(Color.cardButtonViewGray)
                .frame(width: geometry.size.width, height: geometry.size.height/1.1, alignment: .top)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct NextValidateButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Siguiente")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
