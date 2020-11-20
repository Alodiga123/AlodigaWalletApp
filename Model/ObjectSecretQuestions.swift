//
//  ObjectSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 29/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation


struct ObjectSecretQuestions: Decodable{
    var envelope: EnvelopeSecretQuestions
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeSecretQuestions : Decodable{
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
   //var mensajeRespuesta : String
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         //case mensajeRespuesta = "mensajeRespuesta"
     }
}

struct Questions: Identifiable, Decodable, Hashable{
    var alternativeName3 : String
    var code : String
    var id : String
    var name : String
    var shortName : String
    
    init( ) {
        self.alternativeName3 = "Seleccione una opcion"
        self.code  = ""
        self.id  = ""
        self.name  = ""
        self.shortName = ""
    }

    enum CodingKeys: String, CodingKey {
        case alternativeName3 = "alternativeName3"
        case code = "code"
        case id = "id"
        case name = "name"
        case shortName = "shortName"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(alternativeName3)
        hasher.combine(code)
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(shortName)
    }
}
