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
         case tokenResponse = "ns2:getBusinessInfoByCryptogramResponse"
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
    var businessName : String
    var businessRif : String
    var storeName : String
    var posCode : String
    var address : String
    var phoneNumber : String
    
    enum CodingKeys: String, CodingKey {
        case fechaHora = "fechaHora"
        case codigoRespuesta = "codigoRespuesta"
        case mensajeRespuesta = "mensajeRespuesta"
        case datosRespuesta = "datosRespuesta"
        case businessName = "businessName"
        case businessRif = "businessRif"
        case storeName = "storeName"
        case posCode = "posCode"
        case address = "address"
        case phoneNumber = "phoneNumber"
     }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        fechaHora = try container.decodeIfPresent(String.self, forKey: .fechaHora) ?? ""
        codigoRespuesta = try container.decodeIfPresent(String.self, forKey: .codigoRespuesta) ?? ""
        mensajeRespuesta = try container.decode(MensajeRespuestaQR.self, forKey: .mensajeRespuesta)
        datosRespuesta = try container.decodeIfPresent(String.self, forKey: .datosRespuesta) ?? ""
        businessName = try container.decodeIfPresent(String.self, forKey: .businessName) ?? ""
        businessRif = try container.decodeIfPresent(String.self, forKey: .businessRif) ?? ""
        storeName = try container.decodeIfPresent(String.self, forKey: .storeName) ?? ""
        posCode = try container.decodeIfPresent(String.self, forKey: .posCode) ?? ""
        address = try container.decodeIfPresent(String.self, forKey: .address) ?? ""
        phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber) ?? ""
    
    }
}

struct MensajeRespuestaQR: Decodable{
    
}
