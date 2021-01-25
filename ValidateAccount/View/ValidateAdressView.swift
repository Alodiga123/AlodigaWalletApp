//
//  ValidateAdressView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/15/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct ValidateAdressView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ValidateAdressViewAccess()
                }
            }.navigationBarTitle("Return", displayMode: .inline)
        }
    }
}

struct ValidateAdressViewAccess: View {
    @State var state: String = ""
    @State var city: String = ""
    @State var zipZone: String = ""
    @State var street: String = ""
    @State var steptwo: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
        }
    }
    
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
                        TextLabelAccount()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    TextLabelValidateDirecction()
                    StateTextField(state: self.$state)
                    CityTextField(city: self.$city)
                    ZipZoneTextField(zipZone: self.$zipZone)
                    StreetTextField(street: self.$street)
//                    NavigationLink(destination: SuccesfullValidateView()) {
//                        NextValidateButtonContent()
//                    }
                    
                    Button(action: {
                        let validateController = ValidateAccountController()
                        let alert = ShowAlert()
                        let guardar = AL_SaveCumplimient()
                        
                        
                        if(state.isEmpty || state.count == 0 || city.isEmpty || city.count == 0 || zipZone.isEmpty || zipZone.count == 0 || street.isEmpty || street.count == 0){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("InvalidAllQuestion", comment: ""))
                        }else{                            
                            guardar.cpUserId = "379"
                            guardar.cpEstado = state
                            guardar.cpCiudad = city
                            guardar.cpZipCode = zipZone
                            guardar.cpAddres1 = street
                            guardar.cpImgDocument = "1"
                            guardar.cpImgProfile = "2"
//                            validateController.getValidateAccount(salvarCuenta: guardar) { (res,error) in
//                                print("VALIDANDO LA CUENTA !!!!")
//                                if res != nil  {
//                                    print(res as Any)
//                                    let validarCuenta: ObjectValidateAccount
//                                    validarCuenta = res! as ObjectValidateAccount
//                                    print(validarCuenta.envelope.body.validateResponse._return.fechaHora)
//                                    stepNex()
//                                }
//
//                                if error != nil {
//                                    let alert = ShowAlert()
//                                    alert.showPaymentModeActionSheet(title: "error", message: validateController.getMessageError(code: error!))
//                                    print(error!)
//                                }
//                            }
                            stepNex()
                        }
                    }) {
                        NextValidateButtonContent()
                    }
                    
                    NavigationLink(destination: SuccesfullValidateView(), isActive:self.$steptwo){
                        EmptyView()
                    }
                    
                    NavigationLink(destination: PhotoViewStepTwoView()) {
                        ValidateBackButtonContent()
                    }
                }.padding(.horizontal)
                .background(Color.cardButtonViewGray)
                .frame(width: geometry.size.width, height: geometry.size.height/1.2, alignment: .top)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelValidateDirecction: View {
    var body: some View {
        Text("Address")
            .font(.body)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 370, height: 50)
    }
}

struct StateTextField: View {
    @Binding var state: String
    var body: some View {
        FloatingLabelTextField($state, placeholder: NSLocalizedString("State", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct CityTextField: View {
    @Binding var city: String
    var body: some View {
        FloatingLabelTextField($city, placeholder: NSLocalizedString("City", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct ZipZoneTextField: View {
    @Binding var zipZone: String
    var body: some View {
        FloatingLabelTextField($zipZone, placeholder: NSLocalizedString("ZipCode", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct StreetTextField: View {
    @Binding var street: String
    var body: some View {
        FloatingLabelTextField($street, placeholder: NSLocalizedString("Street", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 40)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,-1)
    }
}

struct ValidateAdressView_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAdressView()
    }
}
