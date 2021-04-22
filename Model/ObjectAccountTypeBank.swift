//
//  ObjectCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 22/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectAccountTypeBank: Decodable{
    var envelope: EnvelopeAccountTypeBank
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeAccountTypeBank : Decodable{
   var xmlns : String
   var body : BodyAccountTypeBank
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyAccountTypeBank : Decodable{
    var AccountTypeBankResponse: AccountTypeBankMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case AccountTypeBankResponse = "ns2:getAccountTypeBankResponse"
     }
}

struct AccountTypeBankMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnAccountTypeBank
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnAccountTypeBank : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuestaAccountTypeBank
    var accountTypeBank : [Account]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case accountTypeBank = "accountTypeBank"
     }
}

struct Account: Identifiable, Decodable, Hashable{
    var code : String
    var description : String
    var id : String
    
    init( ) {
        self.code  = ""
        self.description  = "Seleccione una opcion"
        self.id  = "-1"
    }

    enum CodingKeys: String, CodingKey {
        case code = "code"
        case description = "description"
        case id = "id"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(code)
        hasher.combine(description)
        hasher.combine(id)
    }
}

struct MensajeRespuestaAccountTypeBank: Decodable{
    
}



