//
//  SpinnerUltSecretQuestion.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/20/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct UltQuestionList: View {
    @State var isSheetOpened = false
    @State var securitys : [questionsSecurity] = []
    @State var selectedSecurity = questionsSecurity()
    @State var question3: String = ""


    @State var expand = false

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
                SheetSecurity3(questions: self.securitys, isSheetOpened: self.isSheetOpened, question1: Constant.defaults.value(forKey: "question1ID") as? String ?? "-1", question2: Constant.defaults.value(forKey: "question2ID") as? String ?? "-1", selectedquestions: self.$selectedSecurity)
            }

        }.onAppear(
            perform: getJSONSecurity
        )
    
    }
  
    func getJSONSecurity() {
        //loading.loadindView()
        var objetResponse: ObjectSecretQuestions
        let str: String = Constant.defaults.value(forKey: "jsonSecurity") as! String
        do {
            objetResponse = try JSONDecoder().decode(ObjectSecretQuestions.self, from: str.data(using: .utf8)!)
            print("OBJETO DECODE")
            print(objetResponse)
            self.securitys = objetResponse.envelope.body.registerMovilResponse._return.datosRespuesta
            self.selectedSecurity = securitys[2]
            Constant.defaults.set(securitys[2].preguntaId, forKey: "question3ID")

        } catch  {
            loading.loadingDismiss()
            print("Error: decodificando json")
        }
        
       //loading.loadingDismiss()
    }
    
}


struct SheetSecurity3: View {
    var questions : [questionsSecurity]
    var isSheetOpened : Bool
    var question1: String
    var question2: String

    @Binding var selectedquestions: questionsSecurity
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.questions, id: \.self) { index in
                    if(index.preguntaId != selectedquestions.preguntaId ){
                        if(index.preguntaId != question2 ){
                            if(index.preguntaId != question1 ){

                    Button(action: {
                        self.selectedquestions = index
                        Constant.defaults.set(index.preguntaId, forKey: "question3ID")
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(index.pregunta).fontWeight(.bold)
                            .foregroundColor(.gray).font(.callout)
                            .frame(width: 310, alignment: .leading)
                        
                    }
                            }
                        }
                        
                    }
                }
            }.colorMultiply(Color.cardButtonViewGray)
        }
    }
}

