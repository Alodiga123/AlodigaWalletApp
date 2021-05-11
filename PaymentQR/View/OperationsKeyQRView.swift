//
//  OperationsKeyQRView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/14/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
//
//  OperationsKeyView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct OperationsKeyViewQr: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    OperationsKeyViewAccessQR()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct OperationsKeyViewAccessQR: View {
    @State var key: String = ""
    @State var isSuccesKey: Bool = false
    @State var count : Int = 0
    @State var count_aux : Int = 3
    @State var isFailKey: Bool = false
    @State var fail : Bool = false
    var loading = Loading()
    
    func isSuccesKeyIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isSuccesKey = true
        }
    }
    
    func isFailIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.fail = true
        }
    }
    func isFailKeyIn(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isFailKey = true
        }
    }
    var body: some View {
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
                    
                    if(fail == true){
                        TextFailViewQr(count: $count_aux)
                    }
                    TextLabelOperationKeyQr()
                    TransOperKeyTextFieldQr(key: self.$key)
                    Button(action: {
                        
                        if(Constant.defaults.integer(forKey: "countKeyQr") != nil){
                            count = Constant.defaults.integer(forKey: "countKeyQr")
                        }
                        
                        Constant.defaults.setValue(count, forKey: "countKeyQr")
                        
                        let alert = ShowAlert()
                        
                        if(key.isEmpty || key.count != 4){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("pinText", comment: ""))
                        }else if(Constant.defaults.integer(forKey: "countKeyQr") >= 3){
                            Constant.defaults.removeObject(forKey: "countKeyQr")
                            self.isFailKeyIn()
                            
                        }else{
                            let util = Utils()
                            //loading.loadindView()
                            util.getKeyEncript(key: key.trimmingCharacters(in: NSCharacterSet.whitespaces)) { (reskey, errorkey) in
                               
                                if(reskey != nil){
                                    var claveencip = reskey! as String
                                    util.getCodeOperation(data: claveencip.trimmingCharacters(in: NSCharacterSet.whitespaces)) { (res, error) in
                                        if(res != nil){
                                            //loading.loadingDismiss()
                                            let clave : String
                                            clave = res! as String
                                            
                                            if(clave == "00"){
                                                self.isSuccesKeyIn()
                                            }else{
                                                fail = true
                                                count_aux = count_aux - 1
                                                count = count + 1
                                                Constant.defaults.setValue(count, forKey: "countKeyQr")
                                            }
                                            
                                        }
                                        if error != nil {
                                            //loading.loadingDismiss()
                                            let alert = ShowAlert()
                                            fail = true
                                            count_aux = count_aux - 1
                                            count = count + 1
                                            Constant.defaults.setValue(count, forKey: "countKeyQr")
                                            //alert.showPaymentModeActionSheet(title: "error", message: util.getMessageErrorCodeOperation(code: error!))
                                            print(error!)
                                        }
                                        
                                    }
                                }//key
                                
                                if errorkey != nil {
                                    let alert = ShowAlert()
                                    alert.showPaymentModeActionSheet(title: "error", message: util.getMessageErrorCodeOperation(code: errorkey!))
                                    print(errorkey!)
                                }
                            }
                        }
                        
                        //self.isSuccesKeyIn()
                        
                    }) {
                        
                        TransferenceSendButtonContents()
                    }.padding(3)
                    
                    
                    NavigationLink(destination: ConfirmationQRView(), isActive:self.$isSuccesKey){
                        EmptyView()
                    }
                    
                    NavigationLink(destination: FailCodeOperationView(), isActive:self.$isFailKey){
                        EmptyView()
                    }
                    
                    /*NavigationLink(destination: ConfirmationView()) {
                     TransferenceSendButtonContentsQr()
                     }*/
                    NavigationLink(destination: TargetCustomerView()) {
                        TransferenceBackButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextFailViewQr: View {
    @Binding var count : Int
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            let text = NSLocalizedString("info_Fail_code", comment: "") + String(count)
            Text(text)
                .font(.callout)
                .foregroundColor(Color.fontOrangeColor)
                .padding(.top,25)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
            
        }
    }
}
struct TextLabelOperationKeyQr: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("OperationPass")
                .font(.callout)
                .foregroundColor(Color.placeholderGrayColor)
                .padding(.top,25)
        }
    }
}

struct TransOperKeyTextFieldQr: View {
    @Binding var key: String
    var body: some View {
        FloatingLabelTextField($key, placeholder: NSLocalizedString("Fail_code_title", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .leftView({ // Add left view.
            Image("password")
        })
        .placeholderColor(Color.placeholderGrayColor)
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .keyboardType(.numberPad)
    }
}

struct TransferenceSendButtonContentsQr: View {
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

struct OperationsKeyView_PreviewsQr: PreviewProvider {
    static var previews: some View {
        OperationsKeyView()
    }
}
