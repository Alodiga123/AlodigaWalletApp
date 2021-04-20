//
//  ObjectSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 19/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation


struct ObjectSecretQuestions: Decodable{
    var envelope: EnvelopeSecretQuestions
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeSecretQuestions: Decodable{
   var xmlns : String
   var body : BodySecretQuestions
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodySecretQuestions : Decodable{
    var registerMovilResponse: SecretQuestionsResponse
    
    enum CodingKeys: String, CodingKey {
         case registerMovilResponse = "ns2:getPreguntasSecretasResponse"
     }
}

struct SecretQuestionsResponse: Decodable{
   var _xmlns : String
   var _return : ReturnSecretQuestions
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnSecretQuestions : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var datosRespuesta : [questionsSecurity]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case datosRespuesta = "datosRespuesta"
     }
}


struct questionsSecurity:  Decodable, Hashable{
    
    var preguntaIdiomaId : String
    var pregunta : String
    var preguntaId : String
    
    init( ) {
        self.preguntaIdiomaId  = ""
        self.pregunta = "Seleccione una opcion"
        self.preguntaId  = "-1"
    }

    enum CodingKeys: String, CodingKey {
        case preguntaIdiomaId = "preguntaIdiomaId"
        case pregunta = "pregunta"
        case preguntaId = "preguntaId"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(preguntaIdiomaId)
        hasher.combine(pregunta)
        hasher.combine(preguntaId)
    }
}
