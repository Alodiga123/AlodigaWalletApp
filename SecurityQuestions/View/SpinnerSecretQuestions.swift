//
//  SpinnerSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/15/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI


struct FirstViewSecurity: View {
    @State var isSheetOpened = false
    //var products = Manager()
    @State var securitys : [questionsSecurity] = []
    @State var selectedSecurity = questionsSecurity()
    @State var expand = false
    @State var separador: String = " - "
    @State var jsonSecurity : ObjectSecretQuestions?
    @State var question1: String = ""


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
                
                SheetSecurity(questions: self.securitys, isSheetOpened: self.isSheetOpened, question1: selectedSecurity, question2: Constant.defaults.value(forKey: "question2ID") as? String ?? "1" , question3: Constant.defaults.value(forKey: "question3ID") as? String ?? "2", selectedquestions: self.$selectedSecurity)
            }
 
        }.onAppear(
            perform: getJSONSecurity)
    }

    func getJSONSecurity() {
        //loading.loadindView()
        
        let secretQuestionsController = SecretQuestionsController()
        let getPreguntasSecretas = GetPreguntasSecretas()
        Constant.defaults.set(true, forKey: "questionIni")


            getPreguntasSecretas.cpIdIdioma = "4"
            getPreguntasSecretas.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
            getPreguntasSecretas.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
        
        secretQuestionsController.getSecretQuestions(preguntaSecreta: getPreguntasSecretas){ (res,error) in
            if res != nil {
                self.jsonSecurity = res! as ObjectSecretQuestions
                self.securitys = res!.envelope.body.registerMovilResponse._return.datosRespuesta
                self.selectedSecurity = securitys[0]
                Constant.defaults.set(selectedSecurity.preguntaId, forKey: "question1ID")
                
            }
            
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: secretQuestionsController.getMessageError(code: error!))
                print(error!)
            }
        }
        
        //loading.loadingDismiss()
    }
}

struct SheetSecurity: View {
    var questions : [questionsSecurity]
    var isSheetOpened : Bool
    var question1 : questionsSecurity
    var question2 : String
    var question3 : String

    
    @Binding var selectedquestions: questionsSecurity
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            List {
                ForEach(self.questions, id: \.self) { index in
                    
          
                    if(index.preguntaId != question1.preguntaId ){
                    if(index.preguntaId != question2 ){
                    if(index.preguntaId != question3 ){
                    Button(action: {
                        
                        self.selectedquestions = index
                        Constant.defaults.set(index.preguntaId, forKey: "question1ID")

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

