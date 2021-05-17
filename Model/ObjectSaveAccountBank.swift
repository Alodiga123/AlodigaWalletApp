//
//  ObjectRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 23/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation


struct ObjectSaveAccountBank: Decodable{
    var envelope: EnvelopeSaveAccountBank
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeSaveAccountBank : Decodable{
   var xmlns : String
   var body : BodySaveAccountBank
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodySaveAccountBank : Decodable{
    var saveAccountBankResponse: SaveAccountBankResponse
    
    enum CodingKeys: String, CodingKey {
         case saveAccountBankResponse = "ns2:saveAccountBankUserResponse"
     }
}

struct SaveAccountBankResponse: Decodable{
   var _xmlns : String
   var _return : ReturnSaveAccountBank
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnSaveAccountBank : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : MensajeRespuestaSaveBank
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
     }
}

struct MensajeRespuestaSaveBank: Decodable{
    
}




