//
//  ObjectManualWithdrawals.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 10/12/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectManualWithdrawals: Decodable{
    var envelope: EnvelopeManualWithdrawals
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeManualWithdrawals : Decodable{
   var xmlns : String
   var body : BodyManualWithdrawals
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyManualWithdrawals : Decodable{
    var ManualWithdrawalsResponse: ManualWithdrawalsMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case ManualWithdrawalsResponse = "ns2:manualWithdrawalsResponse"
     }
}

struct ManualWithdrawalsMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnManualWithdrawals
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnManualWithdrawals : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    //var banks : [BankByCountry]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         //case banks = "banks"
     }
}

