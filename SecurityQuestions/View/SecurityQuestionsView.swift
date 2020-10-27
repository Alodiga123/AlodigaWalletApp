//
//  SecurityQuestionsView.swift
//  AlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 27/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//
import SwiftUI

import FloatingLabelTextFieldSwiftUI

struct SecurityQuestionsView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("backScream")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height/2).padding(.bottom,-geometry.size.height/2)
                VStack() {
                    SecurityQuestionsViewAccess()
                }
            }.navigationBarTitle("SecurityQuestions", displayMode: .inline)
        }
    }
}

struct SecurityQuestionsViewAccess: View {
    @State var question1: String = ""
    @State var question2: String = ""
    @State var question3: String = ""
    
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
                        TextLabelQuestions()
                    }.padding(.leading,20)
                     .padding(.trailing,20)
                    TextLabelEnterSQ()
                    VStack{
                        ListarPregunta()
                        Questions1RegisterTextField(question1: self.$question1)
                        ListarPregunta()
                        Questions2RegisterTextField(question2: self.$question2)
                        ListarPregunta()
                        Questions3RegisterTextField(question3: self.$question3)
                    }
                    
                    NavigationLink(destination: SuccessfulQuestionsView()) {
                        QuestionsBackButtonContent()
                    }
                    NavigationLink(destination: SuccessfulQuestionsView()) {
                        QuestionsContinueButtonContent()
                    }
                }.background(Color.cardButtonViewGray)
                    .cornerRadius(40)
            }.padding(.bottom,geometry.size.height/2.2)
        }
    }
}

struct TextLabelQuestions: View {
    var body: some View {
        Text("SecurityQuestions")
            .font(.title)
            .foregroundColor(Color.fontBlackColor)
            .multilineTextAlignment(.center)
            .frame(width: 345, height: 50)
    }
}

struct TextLabelEnterSQ: View {
    var body: some View {
        Text("EnterSQ")
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top,20)
    }
}

struct TextLabelquestions: View {
    var body: some View {
        Text("EnterPhone")
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top,18)
    }
}


struct Questions1RegisterTextField: View {
    @Binding var question1: String
    var body: some View {
        FloatingLabelTextField($question1, placeholder: "Respuesta 1", editingChanged: { (isChanged) in
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

struct Questions2RegisterTextField: View {
    @Binding var question2: String
    var body: some View {
        FloatingLabelTextField($question2, placeholder: "Respuesta 2", editingChanged: { (isChanged) in
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

struct Questions3RegisterTextField: View {
    @Binding var question3: String
    var body: some View {
        FloatingLabelTextField($question3, placeholder: "Respuesta 3", editingChanged: { (isChanged) in
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

struct ListarPregunta: View {
    let co = Color.black.opacity(0.1)
    var listQuestions = ["Color Favorito", "Carro Favorito", "Nombre de tu Mascota"]
    @State private var isExpanded = false
    @State private var selectQuestions = "Pregunta"

    var body: some View {
        VStack(alignment: .leading){
            if #available(iOS 14.0, *) {
                DisclosureGroup("\(selectQuestions)", isExpanded:$isExpanded){
                    VStack(alignment: .leading) {
                        ForEach(self.listQuestions, id: \.self) { listQuestions in
                            Text(listQuestions)
                                .font(.callout)
                                .frame(width: 300, alignment: .leading)
                                .padding(.top,10)
                                .padding(.bottom,5)
                                .padding(.leading,0)
                                .foregroundColor(.blue)
                                    .onTapGesture{
                                        print (listQuestions)
                                        self.selectQuestions = ("\(listQuestions)")
                                        withAnimation{
                                            self.isExpanded.toggle()
                                        }
                                    }
                        }
                    }
                }.accentColor(.white)
                .font(.callout)
                .foregroundColor(.blue)
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.bottom,8)
                .padding(.top,8)
                //.padding(.all)
                .background(co)
                .cornerRadius(8)
            } else {
                // Fallback on earlier versions
            }
        }.padding(.leading,20)
        .padding(.trailing,20)
        .padding(.bottom,0)
        .padding(.top,0)
    }
}

struct QuestionsBackButtonContent: View {
    let co = Color.black.opacity(0.7)
    var body: some View {
        Text("Back")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,15)
    }
}


struct QuestionsContinueButtonContent: View {
    let co = Color.black.opacity(0.1)
    var body: some View {
        Text("Continue")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 60)
            .background(co)
            .cornerRadius(35.0)
            .padding(.top,5)
            .padding(.bottom)
    }
}

struct SecurityQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        SecurityQuestionsView()
    }
}

