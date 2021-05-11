//
//  ObjectCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 29/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectAccountBankByUser: Decodable{
    var envelope: EnvelopeAccountBankByUser
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeAccountBankByUser : Decodable{
   var xmlns : String
   var body : BodyAccountBankByUser
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyAccountBankByUser : Decodable{
    var AccountBankByUserResponse: AccountBankByUserMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case AccountBankByUserResponse = "ns2:getAccountBankByUserResponse"
     }
}

struct AccountBankByUserMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnAccountBankByUser
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnAccountBankByUser : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuestaAccountBankByUser
    var accountBanks : [AccountBanks]?
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case accountBanks = "accountBanks"
     }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        fechaHora = try container.decode(String.self, forKey: .fechaHora)
        codigoRespuesta = try container.decode(String.self, forKey: .codigoRespuesta)
        mensajeRespuesta = try container.decode(MensajeRespuestaAccountBankByUser.self, forKey: .mensajeRespuesta)
        
        do {
            accountBanks =  try container.decodeIfPresent([FailableDecodable<AccountBanks>].self, forKey: .accountBanks)?
            .compactMap { $0.base } as! [AccountBanks]?
        } catch  {
            accountBanks = [try container.decode(AccountBanks.self, forKey: .accountBanks)]
        }
    }
}

struct AccountBanks: Identifiable, Decodable, Hashable{
    var accountNumber : String?
    var accountTypeBankId : CuentaPorBanco
    var bankId : Bancos
    var businessId : String?
    var createDate : String?
    var id : String?
    var unifiedRegistryId : String?
    
    init( ) {
        self.accountNumber = NSLocalizedString("selectoption", comment: "")
        self.accountTypeBankId  = CuentaPorBanco()
        self.bankId  =  Bancos()
        self.businessId  =  ""
        self.createDate  = ""
        self.id  = ""
        self.unifiedRegistryId  = ""
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        accountTypeBankId = try container.decode(CuentaPorBanco.self, forKey: .accountTypeBankId)
        bankId = try container.decode(Bancos.self, forKey: .bankId)
        businessId = try container.decodeIfPresent(String.self, forKey: .businessId)
        createDate = try container.decodeIfPresent(String.self, forKey: .createDate)
        id = try container.decodeIfPresent(String.self, forKey: .id)
        unifiedRegistryId = try container.decodeIfPresent(String.self, forKey: .unifiedRegistryId)
    }

    enum CodingKeys: String, CodingKey {
        case accountNumber = "accountNumber"
        case accountTypeBankId = "accountTypeBankId"
        case bankId = "bankId"
        case businessId = "businessId"
        case createDate = "createDate"
        case id = "id"
        case statusAccountBankId = "statusAccountBankId"
        case unifiedRegistryId = "unifiedRegistryId"
     }
}


struct CuentaPorBanco: Identifiable, Decodable, Hashable {
    var code : String
    var description : String
    var id : String
    
    init() {
        self.code  = ""
        self.description  = ""
        self.id = ""
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

struct Bancos: Identifiable, Decodable, Hashable {
    var id : String
    var name : String
    var swiftCode : String
    
    init() {
        self.id = ""
        self.name  = ""
        self.swiftCode  = ""
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case swiftCode = "swiftCode"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(swiftCode)
    }
}

struct MensajeRespuestaAccountBankByUser: Decodable{
    
}



