//
//  ObjectTokenAplication.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 12/11/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectTokenAplication: Decodable{
    var envelope: EnvelopeTokenAplication
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}


struct EnvelopeTokenAplication : Decodable{
   var xmlns : String
   var body : BodyTokenAplication
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}


struct BodyTokenAplication : Decodable{
    var tokenResponse: TokenResponse
    
    enum CodingKeys: String, CodingKey {
         case tokenResponse = "ns2:generarCodigoMovilSMSAplicacionMovilResponse"
     }
}


struct TokenResponseAplication: Decodable{
   var _xmlns : String
   var _return : ReturnTokenAplication
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnTokenAplication : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuestaTokenAplication
    //var datosRespuesta : String
    
    enum CodingKeys: String, CodingKey {
        case fechaHora = "fechaHora"
        case codigoRespuesta = "codigoRespuesta"
        case mensajeRespuesta = "mensajeRespuesta"
        //case datosRespuesta = "datosRespuesta"
     }
}


struct MensajeRespuestaTokenAplication: Decodable{
    
}
