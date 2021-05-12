//
//  SucesfullRechargeView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SucesfullRechargeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SucesfullRechargeViewAccess()
                }
            }.navigationBarTitle("", displayMode: .inline).navigationBarBackButtonHidden(true)
        }
    }
}

struct SucesfullRechargeViewAccess: View {
    @State var text = ""
    @State var stepthree: Bool = false
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepthree = true
        }
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack (alignment: .center, spacing: 5) {
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelSucesfullRecharge()
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    
                    TextLabelSuccesfulRe()
                    RechargeCheckImagine()
                    
                    VStack{
                        
                      
                      
                        
                        /*HStack {
                            Text("País")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(countrySelect["nameCountryRe"]!, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Banco")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "nameBankRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                        HStack {
                            Text("Producto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "nameProductRe") as! String, text: self.$text)
                                .font(.caption)
                        }
                        */
                       /* HStack {
                            Text("Concepto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "conceptRe") as? String ?? "", text: self.$text)
                                .font(.caption)
                        }
                        
                        HStack {
                            Text("Transf No")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField(Constant.defaults.value(forKey: "transferRe") as? String ?? "", text: self.$text)
                                .font(.caption)
                        }
                        
                        HStack {
                            Text("Monto")
                                .frame(width: 80, alignment: .leading)
                                .font(.caption)
                            TextField( Constant.defaults.value(forKey: "amountRe") as? String ?? "", text: self.$text)
                                .font(.caption)
                        }*/
                    }
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Button {
                        Constant.defaults.removeObject(forKey: "conceptRe")
                        Constant.defaults.removeObject(forKey: "transferRe")
                        Constant.defaults.removeObject(forKey: "amountRe")
                        stepNex()
                    } label: { 
                        RechangeEndButtonContent()

                    }

                    NavigationLink(destination: MainViewLogged(), isActive:self.$stepthree){
                        EmptyView()
                    }
                    
                   
                    //NavigationLink(destination: MainViewLogged()) {
                      //  RechangeShareButtonContent()
                    //}
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelSucesfullRecharge: View {
    var body: some View {
        Text("SuccessfulRecharge")
            .font(.title)
            .frame(width: 310, height: 60, alignment: .center)
            .foregroundColor(Color.fontBlackColor)
    }
}



struct TextLabelSuccesfulRe: View {
    var body: some View {
        Text("recharge_succesfull")
            /*.font(.headline)
            .foregroundColor(Color.fontOrangeColor)*/
            .frame(width: 340, height: 80, alignment: .center)
            //.padding()
        
            .font(.headline)
            .foregroundColor(.gray)
            .padding(.leading,20)
            .padding(.trailing,15)
            .padding(.bottom,10)
            .padding(.top,8)
    }
}
struct RechargeCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 100.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 100)
    }
}

struct RechangeEndButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Finalize")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top)
    }
}

struct RechangeShareButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Share")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,10)
    }
}

struct SucesfullRechargeView_Previews: PreviewProvider {
    static var previews: some View {
        SucesfullRechargeView()
    }
}
