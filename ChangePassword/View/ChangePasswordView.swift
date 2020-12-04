//
//  ChangePasswordView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 27/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI


struct ProgressBar: View {
    @Binding var progress: CGFloat
    @State var isShowing = false
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color.gray)
                .opacity(0.3)
                .frame(width: 345.0, height: 8.0)
            Rectangle()
                .foregroundColor(Color.fontOrangeColor)
                .frame(width: 345.0 * (self.progress / 100.0), height: 8.0)
        }
        .onAppear {
            self.isShowing = true
        }
        .cornerRadius(4.0)
    }
}

struct ChangePasswordView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    ChangePasswordViewAccess()
                }
            }.navigationBarTitle("ChangePass", displayMode: .inline)
        }
    }
}

struct ChangePasswordViewAccess: View {
    @State var pass: String = ""
    @State var repeatPass: String = ""
    @State var isLoggedIn: Bool = false
    @State var stepFour: Bool = false

    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.stepFour = true
        }
    }
    
    var body: some View {
        //ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelChangePassword()
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        TextLabelSecurityChangePass()
                        NewPassTextField(pass: self.$pass)
                        RepeatNewPassTextField(repeatPass: self.$repeatPass)
                        TextLabelRecoverPass()
                        
                        NavigationLink(destination: SuccessfulChangeView()) {
                            ChangeButtonContent()
                        }
                        NavigationLink(destination: MainViewLogged()) {
                            ChangeBackButtonContent()
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(40)
                }.padding(.bottom,geometry.size.height/2.2)
            }
        }
    //}
}

struct TextLabelChangePassword: View {
    var body: some View {
        Text("ChangePass").font(.title).foregroundColor(Color.fontBlackColor)
    }
}

struct TextLabelSecurityChangePass: View {
    var body: some View {
        Text("SecurityLevel")
            .font(.body)
            .foregroundColor(.gray)
            .frame(width: 320, height: 10)
            .padding()
    }
}

struct NewPassTextField: View {
    @Binding var pass: String
    @State var progress : CGFloat = 0
    
    var util = Utils()
    var body: some View {
        
        ProgressBar(progress: $progress)
        FloatingLabelTextField($pass, placeholder: "Nueva contraseña", editingChanged: { (isChanged) in
            progress = util.getNivelProgressBar(clave: pass)
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct RepeatNewPassTextField: View {
    @Binding var repeatPass: String
    var body: some View {
        FloatingLabelTextField($repeatPass, placeholder: "Repita la nueva contraseña", editingChanged: { (isChanged) in
        }) {
        }
            .leftView({ // Add left view.
                Image("")
            }).placeholderColor(Color.placeholderGrayColor)
            .frame(height: 50)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,0)
    }
}

struct TextLabelRecoverPass: View {
    var body: some View {
        Text("PassHelp")
            .font(.caption)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 340, height: 60, alignment: .leading)
            .padding(.top,0)
            .padding(.bottom,0)
    }
}

struct ChangeButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Change")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,10)
    }
}

struct ChangeBackButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom,5)
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
