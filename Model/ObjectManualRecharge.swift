//
//  ObjectManualWithdrawals.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 20/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectManualRecharge: Decodable{
    var envelope: EnvelopeManualRecharge
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeManualRecharge : Decodable{
   var xmlns : String
   var body : BodyManualRecharge
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyManualRecharge : Decodable{
    var ManualRechargeResponse: ManualRechargeMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case ManualRechargeResponse = "ns2:manualRechargeResponse"
     }
}

struct ManualRechargeMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnManualRecharge
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnManualRecharge : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    var idTransaction : String
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case idTransaction = "idTransaction"
     }
}

