//
//  TakePhotoView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/22/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TakePhotoView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TakePhotoViewAccess()
                }
            }.navigationBarTitle("Validar Cuenta", displayMode: .inline)
        }
    }
}

struct TakePhotoViewAccess: View {
        
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
                    Spacer(minLength: 30)
                    TextLabelValidateAccountInstrucction()
                    TextLabelValidateDocuments()
                    TextLabelValidateResolution()
                    Spacer(minLength: 30)
                    NavigationLink(destination: PhotoView()) {
                        TakePhotoButtonContent()
                    }
                    NavigationLink(destination: ValidateAccountFirstView()) {
                        BackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelAccount: View {
    var body: some View {
        Text("Validar Cuenta")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 300, height: 60)
    }
}

struct TextLabelValidateAccountInstrucction: View {
    var body: some View {
        Text("1. Adjunta una fotografia de la cara principal de\n un documento de identidad válido. Puede ser:")
            .font(.body)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 370, height: 60)
    }
}

struct TextLabelValidateDocuments: View {
    var body: some View {
        Text("- Cédula de Identidad\n- Licencia de Conducir")
            .font(.body)
            .foregroundColor(Color.fontBlackColor)
            .frame(width: 340, height: 60, alignment: .leading)
            .padding(.top,0)
            .padding(.bottom,0)
    }
}

struct TextLabelValidateResolution: View {
    var body: some View {
        Text("La fotografía debe estar legible y con una resolución superior a 240ppx")
            .font(.body)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 360, height: 60, alignment: .leading)
            .padding(.top,0)
            .padding(.bottom,0)
    }
}


struct TakePhotoButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Tomar Fotografía")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct TakePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        TakePhotoView()
            .padding(.horizontal)
    }
}
