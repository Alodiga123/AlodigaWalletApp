//
//  ObjectCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 10/7/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectCountry: Decodable{
    var envelope: EnvelopeCountry
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeCountry : Decodable{
   var xmlns : String
   var body : BodyCountry
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyCountry : Decodable{
    var countryResponse: CountryMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case countryResponse = "ns2:getCountriesResponse"
     }
}

struct CountryMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnCountry
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnCountry : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : MensajeRespuesta
    var countries : [Country]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case countries = "countries"
     }
}

struct Country: Identifiable, Decodable, Hashable{
    var alternativeName3 : String
    var code : String
    var id : String
    var name : String
    //var shortName : String
    
    init( ) {
        self.alternativeName3 = "Seleccione"
        self.code  = ""
        self.id  = ""
        self.name  = ""
        //self.shortName = ""
    }

    enum CodingKeys: String, CodingKey {
        case alternativeName3 = "alternativeName3"
        case code = "code"
        case id = "id"
        case name = "name"
        //case shortName = "shortName"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(alternativeName3)
        hasher.combine(code)
        hasher.combine(id)
        hasher.combine(name)
        //hasher.combine(shortName)
    }
}

struct MensajeRespuesta: Decodable{
    
}

struct AlternativeName1: Decodable{
    
}

struct AlternativeName2: Decodable{
    
}

struct shortName: Decodable{
    
}


