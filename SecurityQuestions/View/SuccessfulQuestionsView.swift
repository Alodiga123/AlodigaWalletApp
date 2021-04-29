//
//  SuccesfulRecoverView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 9/23/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SuccessfulQuestionsView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SuccessfulQuestionsViewAccess()
                }
            }.navigationBarTitle("SuccessfulRecovery", displayMode: .inline)
        }
    }
}


struct SuccessfulQuestionsViewAccess: View {
    @State var pass: String = ""
    @State var repeatPass: String = ""
    @State var isLoggedIn: Bool = false
    @State var steptwo: Bool = false

    func stepNex(){
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.steptwo = true
        }
    }
    var body: some View {
        ScrollView{
            GeometryReader { geometry in
                ZStack{
                    VStack(alignment: .center){
                        Rectangle()
                            .frame(width:50, height: 6)
                            .cornerRadius(3.0)
                            .opacity(0.3)
                            .padding(.top,16)
                        VStack(alignment: .leading) {
                            TextLabelQuestions()
                        }.padding(.leading,20)
                        .padding(.trailing,20)
                        Spacer()
                        TextLabelSuccesfulQ()
                        RecoverCheckImagine()
                        Spacer()
                        
                        Button(action: {
                            Constant.defaults.removeObject(forKey: "question1ID")
                            Constant.defaults.removeObject(forKey: "question2ID")
                            Constant.defaults.removeObject(forKey: "question3ID")
                            Constant.defaults.removeObject(forKey: "jsonSecurity")
                            stepNex()
                        }) {
                            QuestionsBackButtonContent()
                        }
                        
                        NavigationLink(destination:  LoginView(), isActive:self.$steptwo){
                            EmptyView()
                        }
                      
                        
                        NavigationLink(destination: SecurityQuestionsView()) {
                          
                        }
                    }.background(Color.cardButtonViewGray)
                        .cornerRadius(25)
                }.padding(.bottom,geometry.size.height/3.2)
            }
        }
    }
}

struct TextLabelSuccesfulQ: View {
    var body: some View {
        Text("SuccesfulQuestions")
            .font(.body)
            .foregroundColor(Color.fontOrangeColor)
            .frame(width: 340, height: 60, alignment: .center)
            .padding(.top,0)
            .padding(.bottom,0)
    }
}

struct QuestionsCheckImagine: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(Color.fontOrangeColor)
            .font(.system(size: 150.0, weight: .light, design: .monospaced))
            .frame(width: 180, height: 160)
    }
}

//struct BackQuestionsButtonContents: View {
//    let co = Color.black.opacity(0.7)
//    var body: some View {
//        Text("Back")
//            .font(.headline)
//            .foregroundColor(.white)
//            .frame(width: 220, height: 60)
//            .background(co)
//            .cornerRadius(35.0)
//            .padding(.top,10)
//    }
//}
//
//
//struct QuestionsButtonContents: View {
//    let co = Color.black.opacity(0.1)
//    var body: some View {
//        Text("Continue")
//            .font(.headline)
//            .foregroundColor(.black)
//            .frame(width: 220, height: 60)
//            .background(co)
//            .cornerRadius(35.0)
//            .padding(.top,5)
//            .padding(.bottom,10)
//    }
//}

struct SuccessfulQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulQuestionsView()
    }
}

