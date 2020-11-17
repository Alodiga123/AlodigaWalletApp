//
//  ObjectChangePassForgot.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 16/11/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectChangePassForgot: Decodable{
    var envelope: EnvelopeChangePassForgot
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeChangePassForgot : Decodable{
   var xmlns : String
   var body : BodyChangePassForgot
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyChangePassForgot : Decodable{
    var countryResponse: ChangePassForgotResponse
    
    enum CodingKeys: String, CodingKey {
         case countryResponse = "ns2:cambiarCredencialAplicacionMovilEmailOrPhoneResponse"
     }
}

struct ChangePassForgotResponse: Decodable{
   var _xmlns : String
   var _return : ReturnChangePass
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnChangePass : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : String
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
     }
}

struct MensajeRespuestaChangePass: Decodable{
    
}


