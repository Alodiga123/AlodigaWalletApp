//
//  ObjectQr.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 5/10/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectQR: Decodable{
    var envelope: EnvelopeQR
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeQR : Decodable{
       var xmlns : String
       var body : BodyQr
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyQr : Decodable{
    var tokenResponse: QrResponse
    
    enum CodingKeys: String, CodingKey {
         case tokenResponse = "ns2:generarCodigoMovilSMSResponse"
     }
}

struct QrResponse: Decodable{
   var _xmlns : String
   var _return : ReturnQr
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnQr : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuestaQR
    var datosRespuesta : String
    
    enum CodingKeys: String, CodingKey {
        case fechaHora = "fechaHora"
        case codigoRespuesta = "codigoRespuesta"
        case mensajeRespuesta = "mensajeRespuesta"
        case datosRespuesta = "datosRespuesta"
     }
}

struct MensajeRespuestaQR: Decodable{
    
}
