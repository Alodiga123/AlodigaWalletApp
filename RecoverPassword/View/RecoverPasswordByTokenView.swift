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
            } .navigationBarTitle("Volver", displayMode: .inline)
            
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
                    RecoverTokenTextField(username: self.$token)
                    NavigationLink(destination: SecurityLevelView()) {
                        ContinueRecoButtonContent()
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
            Text("Tiempo Restante")
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
            self.secondsElapsed2 -= 1
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
        Text("Cancelar")
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
        FloatingLabelTextField($username, placeholder: "Introduzca la clave recibida", editingChanged: { (isChanged) in
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
