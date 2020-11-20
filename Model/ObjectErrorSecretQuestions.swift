//
//  ObjectErrorSecretQuestions.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 19/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorSecretQuestions: Decodable{
    var envelope: EnvelopeSecretQuestionsError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeSecretQuestionsError : Decodable{
   var xmlns : String
   var body : BodySecretQuestionsError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}
    
struct BodySecretQuestionsError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getPreguntasSecretasResponse"
     }
}

