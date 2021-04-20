//
//  SpinnerSecundSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/20/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct SecundQuestionList: View {
    @State var isSheetOpened = false
    @State var securitys : [questionsSecurity]
    @State  var selectedSecurity = questionsSecurity()
    @Binding  var selectedSecurity1 : questionsSecurity
    @State var expand = false
    @State var question2: String = ""


    let loading = Loading()
    var body: some View {

        VStack {
            Button(action: {
                self.isSheetOpened.toggle()
                }) {
                
                Text("\(selectedSecurity.pregunta)").fontWeight(.bold)
                        .foregroundColor(.gray).font(.callout)
                    .frame(width: 340, alignment: .leading)
                
                    Spacer()
                    Image(systemName: isSheetOpened ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6, alignment: .bottomTrailing)
                        .foregroundColor(.gray)
            }
            .padding(10)
            .cornerRadius(10)
            .clipShape(Rectangle())
            
            .frame(width: UIScreen.main.bounds.size.width - 60, height: 10, alignment: .leading)
           
            .sheet(isPresented: self.$isSheetOpened) {
                SheetSecurity2(questions: self.securitys, isSheetOpened: self.isSheetOpened, question1: Constant.defaults.value(forKey: "question1ID") as? String ?? "-1" , selectedquestions: self.$selectedSecurity)
            }
            
            Questions2RegisterTextField(question2: self.$question2)
        
            Spacer()

            if (selectedSecurity.preguntaId != "-1"){
                UltQuestionList(securitys: securitys,selectedSecurity1: self.$selectedSecurity1, selectedSecurity2: self.$selectedSecurity)
            }
        }.onAppear(
           // perform: getJSONSecurity
        )
    }
}


struct SheetSecurity2: View {
    var questions : [questionsSecurity]
    var isSheetOpened : Bool
    var question1: String
    @Binding var selectedquestions: questionsSecurity
    @Environment(\.presentationMode) var presentationMode
    

    var body: some View {
        VStack {
            List {
                ForEach(self.questions, id: \.self) { index in
                    
                    if(index.preguntaId != question1){
                    Button(action: {
                        self.selectedquestions = index
                        Constant.defaults.set(index.preguntaId, forKey: "question2ID")
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.pregunta).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 310, alignment: .leading)

                        
                    }
                }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}
