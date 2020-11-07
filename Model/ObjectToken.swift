//
//  ObjectToken.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 28/10/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectToken: Decodable{
    var envelope: EnvelopeToken
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeToken : Decodable{
       var xmlns : String
       var body : BodyToken
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyToken : Decodable{
    var tokenResponse: TokenResponse
    
    enum CodingKeys: String, CodingKey {
         case tokenResponse = "ns2:generarCodigoMovilSMSResponse"
     }
}

struct TokenResponse: Decodable{
   var _xmlns : String
   var _return : ReturnToken
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnToken : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
     }
}
