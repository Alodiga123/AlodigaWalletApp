//
//  RecoverPasswordByTokenView.swift
//  IOSAlodigaWalletApp
//
//  Created by Kerwin Gomez on 9/11/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct RecoverPasswordByTokenView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    TopButtonViewAccess()
                    
                }
            } .navigationBarTitle("Return", displayMode: .inline)
            
        }
    }
}


struct TimerView: View {
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

struct TopButtonViewAccess: View {
    @State var token: String = ""
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    @State var isLoggedIn: Bool = false
    @State var stepThree: Bool = false
    @State var restCountIntent : Int = 3
    
    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepThree = true
        }
    }
    
    func login(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.isLoggedIn = true
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
                        TextLabelRecuverPassword()
                    }.padding(.leading,20).padding(.trailing,20)
                    Spacer()
                    TimerCounter()
                    TimerCounterValue()
                    RecoverTokenTextField2(username: self.$token)
                    Button(action: {
                        let alert = ShowAlert()
                        
                        if(token.isEmpty || token.count == 0){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("CodeEmpty", comment: ""))
                        }else if(token.count < 6){
                            alert.showPaymentModeActionSheet(title: NSLocalizedString("error", comment: ""), message: NSLocalizedString("CodeLengthInvalid", comment: ""))
                        }else{
                            if ((Constant.defaults.value(forKey: "tokenApi") as! String) !=  token){
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
                        ContinueRecoButtonContent()
                    }
                    
                    NavigationLink(destination: SecurityLevelView(), isActive:self.$stepThree){
                        EmptyView()
                    }
                    NavigationLink(destination: MainViewLogged()) {
                        CancelRecorButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TimerCounter: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            Text("TimeRemaining")
                .foregroundColor(Color.fontOrangeColor)
        }
    }
}


struct TimerCounterValue: View {
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


struct ValidateButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Continue")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,18)
    }
}

struct CancelButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Cancel")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,18)
    }
}

struct BackImg3: View {
    var body: some View {
        Image("back_login")
            .resizable().padding(.top,-80).padding(.bottom,-20)
    }
}

struct RecoverTokenTextField2: View {
    @Binding var username: String
    var body: some View {
        FloatingLabelTextField($username, placeholder: NSLocalizedString("PassReceived", comment: ""), editingChanged: { (isChanged) in
        }) {
        }
        .placeholderColor(Color.placeholderGrayColor)
        .frame(height: 50)
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top)
        .padding(.bottom,0)
    }
}

struct TextLabelRecuverPassword: View {
    var body: some View {
        Text("RecoverPassword").font(.title).foregroundColor(Color.fontBlackColor)
    }
}

struct RecoverPasswordByTokenView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordByTokenView()
    }
}
