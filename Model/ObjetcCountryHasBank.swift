//
//  ObjectCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 22/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjetcCountryHasBank: Decodable{
    var envelope: EnvelopeCountryHasBank
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeCountryHasBank : Decodable{
   var xmlns : String
   var body : BodyCountryHasBank
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyCountryHasBank : Decodable{
    var countryHasBankResponse: CountryHasBankMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case countryHasBankResponse = "ns2:getCountriesHasBankResponse"
     }
}

struct CountryHasBankMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnCountryHasBank
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnCountryHasBank : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : MensajeRespuestaBank
    var countries : [CountryHasBank]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case countries = "countries"
     }
}

struct CountryHasBank: Identifiable, Decodable, Hashable{
    var alternativeName3 : String
    var code : String
    var id : String
    var name : String
    
    init( ) {
        self.alternativeName3 = "Seleccione"
        self.code  = ""
        self.id  = ""
        self.name  = ""
    }

    enum CodingKeys: String, CodingKey {
        case alternativeName3 = "alternativeName3"
        case code = "code"
        case id = "id"
        case name = "name"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(alternativeName3)
        hasher.combine(code)
        hasher.combine(id)
        hasher.combine(name)
    }
}

struct MensajeRespuestaBank: Decodable{
    
}



