//
//  ObjectBankByCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 03/12/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectBankByCountry: Decodable{
    var envelope: EnvelopeBankByCountry
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeBankByCountry : Decodable{
   var xmlns : String
   var body : BodyBankByCountry
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyBankByCountry : Decodable{
    var bankByCountryResponse: BankByCountryMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case bankByCountryResponse = "ns2:getBankByCountryAppResponse"
     }
}

struct BankByCountryMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnBankByCountry
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnBankByCountry : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    var banks : [BankByCountry]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case banks = "banks"
     }
}

struct BankByCountry: Identifiable, Decodable, Hashable{
    var aba : String
    var id : String
    var name : String
    
    init( ) {
        self.aba = ""
        self.id  = ""
        self.name  = "Seleccione un Banco"
    }

    enum CodingKeys: String, CodingKey {
        case aba = "aba"
        case id = "id"
        case name = "name"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(aba)
        hasher.combine(id)
        hasher.combine(name)
    }
}

