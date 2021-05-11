//
//  ObjectManualWithdrawals.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 10/12/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectManualWithdrawals: Decodable{
    var envelope: EnvelopeManualWithdrawals
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }    
}

struct EnvelopeManualWithdrawals : Decodable{
   var xmlns : String
   var body : BodyManualWithdrawals
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyManualWithdrawals : Decodable{
    var ManualWithdrawalsResponse: ManualWithdrawalsMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case ManualWithdrawalsResponse = "ns2:manualWithdrawalsResponse"
     }
}

struct ManualWithdrawalsMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnManualWithdrawals
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnManualWithdrawals : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    var idTransaction : String
    var products : [productTransference]
    
    enum CodingKeys: String, CodingKey {
        case fechaHora = "fechaHora"
        case codigoRespuesta = "codigoRespuesta"
        case mensajeRespuesta = "mensajeRespuesta"
        case idTransaction = "idTransaction"
        case products = "products"
     }
}

struct DatosProductos : Decodable{
    var categoryId: Category?
    var countryId: CountryId?
    var currentBalance: String?
    var enabled: String?
    var id: String?
    var indHasAssociatedBank: String?
    var isAlocashProduct: String?
    var isDefaultProduct: String?
    var isExchangeProduct: String?
    var isFree: String?
    var isPayTopUp: String?
    var isPaymentInfo: String?
    var isRemettence: String?
    var isUsePrepaidCard: String?
    var name: String?
    var referenceCode: String?
    var symbol: String?
    var taxInclude: String?
    
    enum CodingKeys: String, CodingKey {
        case categoryId = "categoryId"
        case countryId = "countryId"
        case currentBalance = "currentBalance"
        case enabled = "enabled"
        case id = "id"
        case indHasAssociatedBank = "indHasAssociatedBank"
        case isAlocashProduct = "isAlocashProduct"
        case isDefaultProduct = "isDefaultProduct"
        case isExchangeProduct = "isExchangeProduct"
        case isFree = "isFree"
        case isPayTopUp = "isPayTopUp"
        case isPaymentInfo = "isPaymentInfo"
        case isRemettence = "isRemettence"
        case isUsePrepaidCard = "isUsePrepaidCard"
        case name = "name"
        case referenceCode = "referenceCode"
        case symbol = "symbol"
        case taxInclude = "taxInclude"
     }
        
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        categoryId = try container.decode(Category.self, forKey: .categoryId)
        countryId = try container.decode(CountryId.self, forKey: .countryId)
        currentBalance = try container.decodeIfPresent(String.self, forKey: .currentBalance)
        enabled = try container.decodeIfPresent(String.self, forKey: .enabled)
        id = try container.decodeIfPresent(String.self, forKey: .id)
        indHasAssociatedBank = try container.decodeIfPresent(String.self, forKey: .indHasAssociatedBank)
        isAlocashProduct = try container.decodeIfPresent(String.self, forKey: .isAlocashProduct)
        isDefaultProduct = try container.decodeIfPresent(String.self, forKey: .isDefaultProduct)
        isExchangeProduct = try container.decodeIfPresent(String.self, forKey: .isExchangeProduct)
        isFree = try container.decodeIfPresent(String.self, forKey: .isFree)
        isPayTopUp = try container.decodeIfPresent(String.self, forKey: .isPayTopUp)
        isPaymentInfo = try container.decodeIfPresent(String.self, forKey: .isPaymentInfo)
        isRemettence = try container.decodeIfPresent(String.self, forKey: .isRemettence)
        isUsePrepaidCard = try container.decodeIfPresent(String.self, forKey: .isUsePrepaidCard)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        referenceCode = try container.decodeIfPresent(String.self, forKey: .referenceCode)
        symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
        taxInclude = try container.decodeIfPresent(String.self, forKey: .taxInclude)
    }
}

