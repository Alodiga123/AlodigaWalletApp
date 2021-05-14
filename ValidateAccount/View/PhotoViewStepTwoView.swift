//
//  PhotoViewStepTwoView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct PhotoViewStepTwoView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    PhotoViewStepTwoViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct PhotoViewStepTwoViewAccess: View {
        
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
                    NavigationLink(destination: ValidateAdressView()) {
                        NextValidateButtonContent()
                    }
                    NavigationLink(destination: StepTwoView()) {
                        ValidateBackButtonContent()
                    }
                }.padding(.horizontal)
                .background(Color.cardButtonViewGray)
                .frame(width: geometry.size.width, height: geometry.size.height/1.1, alignment: .top)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct PhotoViewStepTwoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoViewStepTwoView()
    }
}
