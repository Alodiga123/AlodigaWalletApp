//
//  OperationsKeyView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationsKeyView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationsKeyViewAccess()
                }
            }.navigationBarTitle("Back", displayMode: .inline)
        }
    }
}

struct OperationsKeyViewAccess: View {
    @State var key: String = ""
    @State var isSuccesKey: Bool = false
    @State static var count : Int = 0
    @State var isFailKey: Bool = false

    func isSuccesKeyIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isSuccesKey = true
        }
    }
    func isFailKeyIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isFailKey = true
        }
    }
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack {
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelTransference()
                        }.padding(.leading,20)
                         .padding(.trailing,20)
                        TextLabelOperationKey()
                        TransOperKeyTextField(key: self.$key)
                        
                        Button(action: {
                            let alert = ShowAlert()

                           // if(key.isEmpty || key.count != 4){
                               //     alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("pinText", comment: ""))
                        //    }else if(OperationsKeyViewAccess.count >= 3){
                                
                        //        self.isFailKeyIn()
                                
                         //   }else{
                               /* let util = Utils()
                                util.getCodeOperation(data: "1234") { (res, error) in
                                    if(res != nil){
                                        let clave : String
                                        clave = res! as String
                                        
                                        if(clave == key){
                                            self.isSuccesKeyIn()
                                        }else{
                                            OperationsKeyViewAccess.count = OperationsKeyViewAccess.count + 1
                                        }
                                        
                                    }
                                    if error != nil {
                                        OperationsKeyViewAccess.count = OperationsKeyViewAccess.count + 1
                                        let alert = ShowAlert()
                                        alert.showPaymentModeActionSheet(title: "error", message: util.getMessageErrorCodeOperation(code: error!))
                                        print(error!)
                                    }
                                    
                                //}
                                
                                
                            }*/
                            
                            
                            self.isSuccesKeyIn()
                        
                        }) {
                            
                           TransferenceSendButtonContents()
                        }.padding(3)
                        
                        
                        NavigationLink(destination: ConfirmationView(), isActive:self.$isSuccesKey){
                            EmptyView()
                        }
                        
                        NavigationLink(destination: FailCodeOperation(), isActive:self.$isFailKey){
                            EmptyView()
                        }
                        
                        /*NavigationLink(destination: ConfirmationView()) {
                            TransferenceSendButtonContents()
                        }*/
                        NavigationLink(destination: TargetCustomerView()) {
                            TransferenceBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    }
}

struct TextLabelOperationKey: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("OperationPass")
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding(.top,25)
        }
    }
}

struct TransOperKeyTextField: View {
    @Binding var key: String
    var body: some View {
        FloatingLabelTextField($key, placeholder: "Clave de Operaciones Especiales", editingChanged: { (isChanged) in
        }) {
        }
        .leftView({ // Add left view.
            Image("password")
        })
        .placeholderColor(Color.placeholderGrayColor)
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
    }
}

struct TransferenceSendButtonContents: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Send")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,18)
    }
}

struct OperationsKeyView_Previews: PreviewProvider {
    static var previews: some View {
        OperationsKeyView()
    }
}
