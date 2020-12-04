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
         case validateResponse = "ns2:getCountriesResponse"
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
    //var countries : [Country]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         //case countries = "countries"
     }
}

//struct Country: Identifiable, Decodable, Hashable{
//    var alternativeName3 : String
//    var code : String
//    var id : String
//    var name : String
//    var shortName : String
//
//    init( ) {
//        self.alternativeName3 = "Seleccione una opcion"
//        self.code  = ""
//        self.id  = ""
//        self.name  = ""
//        self.shortName = ""
//    }
//
//    enum CodingKeys: String, CodingKey {
//        case alternativeName3 = "alternativeName3"
//        case code = "code"
//        case id = "id"
//        case name = "name"
//        case shortName = "shortName"
//     }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(alternativeName3)
//        hasher.combine(code)
//        hasher.combine(id)
//        hasher.combine(name)
//        hasher.combine(shortName)
//    }
//}

