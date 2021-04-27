//
//  ObjectBankUS.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/26/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectBankByCountryUS: Decodable{
    var envelope: EnvelopeBankByCountryUS
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeBankByCountryUS : Decodable{
   var xmlns : String
   var body : BodyBankByCountryUS
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyBankByCountryUS : Decodable{
    var bankByCountryResponse: BankByCountryMovilResponseUS
    
    enum CodingKeys: String, CodingKey {
         case bankByCountryResponse = "ns2:getBankByCountryAppResponse"
     }
}

struct BankByCountryMovilResponseUS: Decodable{
   var _xmlns : String
   var _return : ReturnBankByCountryUS
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnBankByCountryUS : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    var banks : [BankByCountryUS]?
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case banks = "banks"
     }
    

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        fechaHora = try container.decode(String.self, forKey: .fechaHora)
        codigoRespuesta = try container.decode(String.self, forKey: .codigoRespuesta)
        mensajeRespuesta = try container.decode(MensajeRespuesta.self, forKey: .mensajeRespuesta)
        
        do {
            banks =  try container.decodeIfPresent([FailableDecodable<BankByCountryUS>].self, forKey: .banks)?
            .compactMap { $0.base } as! [BankByCountryUS]?
        } catch  {
            banks = [try container.decode(BankByCountryUS.self, forKey: .banks)]
        }
            
    }
    
}

struct BankByCountryUS: Identifiable, Decodable, Hashable{
    var abaCode : String?
    var countryId : countryIdRechargeUS
    var id : String
    var name : String
    var swiftCode : String
    
    init( ) {
        self.countryId = countryIdRechargeUS()
        self.id  = ""
        self.name  = "Seleccione una opcion"
        self.swiftCode  = ""
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        countryId = try container.decode(countryIdRechargeUS.self, forKey: .countryId)
        name = try container.decodeIfPresent(String.self, forKey: .name) ?? "Seleccione un Banco"
        abaCode = try container.decodeIfPresent(String.self, forKey: .abaCode)
        id = try container.decodeIfPresent(String.self, forKey: .id) ?? ""
        swiftCode = try container.decodeIfPresent(String.self, forKey: .swiftCode) ?? ""
    }
        
    enum CodingKeys: String, CodingKey {
        case abaCode = "abaCode"
        case countryId = "countryId"
        case id = "id"
        case name = "name"
        case swiftCode = "swiftCode"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(abaCode)
        hasher.combine(countryId)
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(swiftCode)
    }
}




struct countryIdRechargeUS:  Identifiable, Decodable, Hashable{
    var alternativeName3 : String
    var code : String
    var id : String
    var name : String
    var shortName : String
    
    init() {
         alternativeName3 = ""
         code = ""
         id = ""
         name = ""
         shortName = ""
    }

    enum CodingKeys: String, CodingKey {
        case alternativeName3 = "alternativeName3"
        case code = "code"
        case id = "id"
        case name = "name"
        case shortName = "shortName"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(alternativeName3)
        hasher.combine(code)
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(shortName)
    }
}




