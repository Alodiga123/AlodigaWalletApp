//
//  OperationKeyConvertView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/21/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationKeyConvertView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationKeyConvertViewAccess()
                }
            }.navigationBarTitle("Clave de Operaciones", displayMode: .inline)
        }
    }
}

struct OperationKeyConvertViewAccess: View {
    @State var key: String = ""
    var body: some View {
        //ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelConvert()
                        }.padding(.leading,20)
                         .padding(.trailing,20)
                        .frame(height: 10)
                        Spacer()
                        TextLabelOperationKey()
                        OperationKeyTextField(key: self.$key)
                        
                        NavigationLink(destination: ConfirmationConvertView()) {
                            ProcessButtonContents()
                        }
                        
                        NavigationLink(destination: CommissionView()) {
                            BackButtonContent()
                        }
                        
                        Spacer()
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        //}
    }
}

struct OperationKeyConvertView_Previews: PreviewProvider {
    static var previews: some View {
        OperationKeyConvertView()
    }
}
