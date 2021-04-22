//
//  ObjectRecharge.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation


struct ObjectCountryRecharge: Decodable{
    var envelope: EnvelopeCountryRecharge
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeCountryRecharge : Decodable{
   var xmlns : String
   var body : BodyCountryRecharge
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyCountryRecharge : Decodable{
    var countryResponse: CountryRecharge
    
    enum CodingKeys: String, CodingKey {
         case countryResponse = "ns2:getCountriesHasBankResponse"
     }
}

struct CountryRecharge: Decodable{
   var _xmlns : String
   var _return : ReturnCountryRecharge
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnCountryRecharge : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : MensajeRespuestaRecharge
    var countries : [CountryRechargeM]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case countries = "countries"
     }
}

struct CountryRechargeM: Identifiable, Decodable, Hashable{
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

struct MensajeRespuestaRecharge: Decodable{
    
}




