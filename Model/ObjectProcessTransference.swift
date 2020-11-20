//
//  ObjectProcessTransference.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/20/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectProcessTransference: Decodable{
    var envelope: EnvelopeProcessTransference
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeProcessTransference : Decodable{
       var xmlns : String
       var body : BodyProcessTransference
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyProcessTransference : Decodable{
        var cambiar: ProcessTransferenceSucces
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:saveTransferBetweenAccountResponse"
         }
    }

    struct ProcessTransferenceSucces: Decodable{
       var _xmlns : String
       var _return : ReturnProcessTransferenceSucces
        
        enum CodingKeys: String, CodingKey {
             case _xmlns = "_xmlns:ns2"
             case _return = "return"
         }
    }
    
    struct ReturnProcessTransferenceSucces : Decodable{
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

struct productTransference : Decodable {
    var accessNumberUrl : String
    var categoryId: Category
    var currentBalance : String
    var enabled : String
    var enterpriseId : Enterprise
    var id : String
    var isAlocashProduct : String
    var isExchangeProduct : String
    var isFree : String
    var isPayTopUp : String
    var isPaymentInfo : String
    var isRemettence : String
    var name : String
    var productIntegrationTypeId : ProductIntegrationType
    var ratesUrl : String
    var referenceCode : String
    var symbol : String
    var taxInclude : String
    
    enum CodingKeys: String, CodingKey {
         case accessNumberUrl = "accessNumberUrl"
         case categoryId = "categoryId"
         case currentBalance = "currentBalance"
        case enabled = "enabled"
        case enterpriseId = "enterpriseId"
        case id = "id"
        case isAlocashProduct = "isAlocashProduct"
        case isExchangeProduct = "isExchangeProduct"
       case isFree = "isFree"
       case isPayTopUp = "isPayTopUp"
        case isPaymentInfo = "isPaymentInfo"
        case isRemettence = "isRemettence"
        case name = "name"
        case productIntegrationTypeId = "productIntegrationTypeId"
        case ratesUrl = "ratesUrl"
        case referenceCode = "referenceCode"
        case symbol = "symbol"
        case taxInclude = "taxInclude"

     }
    
    
}
struct Category : Decodable{
    var enabled : String
    var id : String
    var name : String
 
    enum CodingKeys: String, CodingKey {
         case enabled = "enabled"
         case id = "id"
         case name = "name"
     }
}

struct  Enterprise : Decodable {
    var address : String
    var atcNumber : String
    var countryId : Country
    var currencyId : Currency
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



struct Currency : Decodable {
    var id : String
    var name : String
    var symbol : String
    
    enum CodingKeys: String, CodingKey {
     case id = "id"
     case name = "name"
     case symbol = "symbol"
     
     }
}

struct ProductIntegrationType : Decodable {
    
    var id : String
    var name : String
    
    enum CodingKeys: String, CodingKey {
     case id = "id"
     case name = "name"
     
     }

}
