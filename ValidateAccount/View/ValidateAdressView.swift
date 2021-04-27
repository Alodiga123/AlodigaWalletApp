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
    @State var state: String = "ccs"
    @State var city: String = "ccs"
    @State var zipZone: String = "1050"
    @State var street: String = "ccs"
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
                            guardar.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String
                            guardar.cpEstado = state
                            guardar.cpCiudad = city
                            guardar.cpZipCode = zipZone
                            guardar.cpAddres1 = street
                            guardar.cpImgDocument = "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"
                            guardar.cpImgProfile = "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"
                            validateController.getValidateAccount(salvarCuenta: guardar) { (res,error) in
                                print("VALIDANDO LA CUENTA !!!!")
                                if res != nil  {
                                    print(res as Any)
                                    let validarCuenta: ObjectValidateAccount
                                    validarCuenta = res! as ObjectValidateAccount
                                    print(validarCuenta.envelope.body.validateResponse._return.fechaHora)
                                    stepNex()
                                }

                                if error != nil {
                                    let alert = ShowAlert()
                                    alert.showPaymentModeActionSheet(title: "error", message: validateController.getMessageError(code: error!))
                                    print(error!)
                                }
                            }
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
