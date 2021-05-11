//
//  ObjectQrSave.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 5/10/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectProcessQR: Decodable{
    var envelope: EnvelopeProcessQr
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeProcessQr : Decodable{
       var xmlns : String
       var body : BodyProcessQr
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyProcessQr : Decodable{
        var cambiar: ProcessQrSucces
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:savePaymentShopResponse"
         }
    }

    struct ProcessQrSucces: Decodable{
       var _xmlns : String
       var _return : ReturnProcessQr
        
        enum CodingKeys: String, CodingKey {
             case _xmlns = "_xmlns:ns2"
             case _return = "return"
         }
    }
    
    struct ReturnProcessQr : Decodable{
       var fechaHora : String
       var codigoRespuesta : String
       var mensajeRespuesta : String
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

struct productQr : Decodable {
    var accessNumberUrl : String
    var categoryId: CategoryQr
    var countryId: CountryId
    var currentBalance : String
    var enabled : String
    //var enterpriseId : Enterprise
    var id : String
    var indHasAssociatedBank: String
    var isAlocashProduct : String
    var isDefaultProduct : String
    var isExchangeProduct : String
    var isFree : String
    var isPayTopUp : String
    var isPaymentInfo : String
    var isRemettence : String
    var isUsePrepaidCard : String
    var name : String
    //var productIntegrationTypeId : ProductIntegrationType
    var ratesUrl : String
    var referenceCode : String
    var symbol : String
    var taxInclude : String

    
    init(from decoder: Decoder) throws {
         let container = try decoder.container(keyedBy: CodingKeys.self)
        
        accessNumberUrl = try container.decodeIfPresent(String.self, forKey: .accessNumberUrl) ??  ""
        categoryId = try container.decode(CategoryQr.self, forKey: .categoryId)
        countryId = try container.decode(CountryId.self, forKey: .countryId)
        currentBalance = try container.decodeIfPresent(String.self, forKey: .currentBalance) ??  ""
        enabled = try container.decodeIfPresent(String.self, forKey: .enabled) ??  ""
        //enterpriseId = try container.decode(Enterprise.self, forKey: .enterpriseId)
        id = try container.decodeIfPresent(String.self, forKey: .id) ??  ""
        indHasAssociatedBank = try container.decodeIfPresent(String.self, forKey: .indHasAssociatedBank) ??  ""
        isAlocashProduct = try container.decodeIfPresent(String.self, forKey: .isAlocashProduct) ??  ""
        isDefaultProduct = try container.decodeIfPresent(String.self, forKey: .isDefaultProduct) ??  ""
        isExchangeProduct = try container.decodeIfPresent(String.self, forKey: .isExchangeProduct) ??  ""
        isFree = try container.decodeIfPresent(String.self, forKey: .isFree) ??  ""
        isPayTopUp = try container.decodeIfPresent(String.self, forKey: .isPayTopUp) ??  ""
        isPaymentInfo = try container.decodeIfPresent(String.self, forKey: .isPaymentInfo) ??  ""
        isRemettence = try container.decodeIfPresent(String.self, forKey: .isRemettence) ??  ""
        isUsePrepaidCard = try container.decodeIfPresent(String.self, forKey: .isUsePrepaidCard) ??  ""
        name = try container.decodeIfPresent(String.self, forKey: .name) ??  ""
        //productIntegrationTypeId = try container.decode(ProductIntegrationType.self, forKey: .productIntegrationTypeId)
        ratesUrl = try container.decodeIfPresent(String.self, forKey: .ratesUrl) ??  ""
        referenceCode = try container.decodeIfPresent(String.self, forKey: .referenceCode) ??  ""
        symbol = try container.decodeIfPresent(String.self, forKey: .symbol) ??  ""
        taxInclude = try container.decodeIfPresent(String.self, forKey: .taxInclude) ??  ""
     }
    
    enum CodingKeys: String, CodingKey {
         case accessNumberUrl = "accessNumberUrl"
         case categoryId = "categoryId"
         case countryId = "countryId"
         case currentBalance = "currentBalance"
        case enabled = "enabled"
        //case enterpriseId = "enterpriseId"
        case indHasAssociatedBank = "indHasAssociatedBank"
        case id = "id"
        case isAlocashProduct = "isAlocashProduct"
        case isDefaultProduct = "isDefaultProduct"
        case isExchangeProduct = "isExchangeProduct"
       case isFree = "isFree"
       case isPayTopUp = "isPayTopUp"
        case isPaymentInfo = "isPaymentInfo"
        case isRemettence = "isRemettence"
        case isUsePrepaidCard = "isUsePrepaidCard"
        case name = "name"
        //case productIntegrationTypeId = "productIntegrationTypeId"
        case ratesUrl = "ratesUrl"
        case referenceCode = "referenceCode"
        case symbol = "symbol"
        case taxInclude = "taxInclude"

     }
    
    
}
struct CategoryQr : Decodable{
    var enabled : String
    var id : String
    var name : String
 
    enum CodingKeys: String, CodingKey {
         case enabled = "enabled"
         case id = "id"
         case name = "name"
     }
}

struct  EnterpriseQr : Decodable {
    var address : String
    var atcNumber : String
    var countryId : Country
    var currencyId : CurrencyQr
    var email : String
    var enabled : String
    var id : String
    var infoEmail : String
    var invoiceAddress : String
    var name : String
    var url : String
    
       enum CodingKeys: String, CodingKey {
        case address = "address"
        case atcNumber = "atcNumber"
        case countryId = "countryId"
        case currencyId = "currencyId"
        case email = "email"
        case enabled = "enabled"
        case id = "id"
        case infoEmail = "infoEmail"
        case invoiceAddress = "invoiceAddress"
        case name = "name"
        case url = "url"
        }
}



struct CurrencyQr : Decodable {
    var id : String
    var name : String
    var symbol : String
    
    enum CodingKeys: String, CodingKey {
     case id = "id"
     case name = "name"
     case symbol = "symbol"
     
     }
}

struct ProductIntegrationTypeQr : Decodable {
    
    var id : String
    var name : String
    
    enum CodingKeys: String, CodingKey {
     case id = "id"
     case name = "name"
     
     }

}
