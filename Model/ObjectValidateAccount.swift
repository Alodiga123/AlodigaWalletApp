//
//  ObjectValidateAccount.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 1/12/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectValidateAccount: Decodable{
    var envelope: EnvelopeValidateAccount
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }    
}

struct EnvelopeValidateAccount : Decodable{
   var xmlns : String
   var body : BodyValidateAccount
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyValidateAccount : Decodable{
    var validateResponse: ValidateAccountMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case validateResponse = "ns2:saveAffiliationRequestUserWalletResponse "
     }
}

struct ValidateAccountMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnValidateAccount
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnValidateAccount : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : MensajeRespuesta
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
     }
}
