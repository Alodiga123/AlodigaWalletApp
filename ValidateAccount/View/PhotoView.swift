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
                        .frame(width:300, height: 300)
                        .cornerRadius(3.0)
                        .opacity(0.1)
                    NavigationLink(destination: StepTwoView()) {
                        NextButtonContent()
                    }
                    NavigationLink(destination: TakePhotoView()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
            .padding(.horizontal)
    }
}
