//
//  PassByTokenView.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/15/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct PassByTokenView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    PassByTokenViewAccess ()
                }
            } .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct PassByTokenViewAccess: View {
    @State var token: String = ""
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    @State var restCountIntent : Int = 3
    @State var stepThree: Bool = false
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepThree = true
        }
    }
    
    var body: some View{
        GeometryReader { geometry in
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width:50, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.3)
                        .padding(.top,16)
                    VStack(alignment: .leading) {
                        TextLabelSignUp()
                    }.padding(.leading,20)
                    .padding(.trailing,20)
                    TimerCounter2()
                    TimerCounterValue2()
                    RegisterTokenTextField(token: self.$token)
                    
                    Button(action: {
                        let alert = ShowAlert()
                        
                        if(token.isEmpty || token.count == 0){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("CodeEmpty", comment: ""))
                        }else if(token.count < 6){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("CodeLengthInvalid", comment: ""))
                        }else{
                            if ((Constant.defaults.value(forKey: "token") as! String) !=  token){
                                restCountIntent -= 1
                                print("INTENTOS: ", restCountIntent)
                                if (restCountIntent == 0){
                                    alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("registerValidationLimit", comment: ""))
                                }else{
                                    alert.showPaymentModeActionSheet(title: "error", message: NSLocalizedString("Remaining", comment: "12"))
                                }
                            }else {
                                stepNex()
                            }
                        }
                    }) {
                        RegisterContinueButtonContent()
                    }
                    
                    NavigationLink(destination: FormSignUpView(), isActive:self.$stepThree){
                        EmptyView()
                    }
                    
                    NavigationLink(destination: MainViewLogged()) {
                        RegisterCancelButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                 .cornerRadius(25)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TimerView2: View {
    @State var secondsElapsed = 150
    var timer = Timer.publish (every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("\(self.secondsElapsed) seconds")
            Button("Stop timer",
                   action: {
                    self.timer.upstream.connect().cancel()
            })
        }.onReceive(timer) { _ in
            self.secondsElapsed -= 1
        }
    }
}

struct TimerCounter2: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("TimeRemaining")
                .foregroundColor(Color.fontOrangeColor)
                .padding(.top)
        }
    }
}

struct TimerCounterValue2: View {
    func SecondToMinutesAndSeconds(seconds:Int) ->String{
        let minutes = "\((seconds % 3600) / 60)"
        let seconds = "\((seconds % 3600) % 60)"
        let minuteStamp = minutes.count > 1 ? minutes: "0" + minutes
        let secondsStamp = seconds.count > 1 ? seconds: "0" + seconds
        
        return "\(minuteStamp):\(secondsStamp)"
    }
    
    @State var secondsElapsed2 = 150
    var timer2 = Timer.publish (every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text(SecondToMinutesAndSeconds(seconds:secondsElapsed2))
        }.onReceive(timer2) { _ in
            if (secondsElapsed2 == 0){
                Text(SecondToMinutesAndSeconds(seconds:secondsElapsed2))
            }else{
                self.secondsElapsed2 -= 1
            }
        }
    }
}

struct RegisterTokenTextField: View {
    @Binding var token: String
    var body: some View {
        FloatingLabelTextField($token, placeholder: NSLocalizedString("PassReceived", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .placeholderColor(Color.placeholderGrayColor)
        .frame(height:50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top)
        .padding(.bottom,0)
    }
}

struct PassByTokenView_Previews: PreviewProvider {
    static var previews: some View {
        PassByTokenView()
    }
}
