//
//  ObjectProductsByBank.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 04/12/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectProductsByBank: Decodable{
    var envelope: EnvelopeProductsByBank
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeProductsByBank : Decodable{
   var xmlns : String
   var body : BodyProductsByBank
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyProductsByBank : Decodable{
    var productsByBankResponse: ProductsByBankMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case productsByBankResponse = "ns2:getProductsByBankIdResponse"
     }
}

struct ProductsByBankMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnProductsByBank
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnProductsByBank : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuesta
    var products : [ProductsByBank]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case products = "products"
     }
}

struct ProductsByBank: Identifiable, Decodable, Hashable {
       
    var accessNumberUrl : String
    //var categoryId : [Categoria]
    var currentBalance : String
    var enabled : String
    //var enterpriseId : [EnterpriseId]
    var id: String
    var isAlocashProduct : String
    var isExchangeProduct : String
    var isFree : String
    var isPayTopUp : String
    var isPaymentInfo : String
    var isRemettence : String
    var name : String
    //var productIntegrationTypeId : [ProductsIntegrationType]
    var ratesUrl : String
    var referenceCode : String
    var symbol : String
    var taxInclude : String
    
    init() {
        self.accessNumberUrl = ""
        //self.categoryId = ""
        self.currentBalance = ""
        self.enabled = ""
        //self.enterpriseId = ""
        self.id = ""
        self.isAlocashProduct = ""
        self.isExchangeProduct = ""
        self.isFree = ""
        self.isPayTopUp = ""
        self.isPaymentInfo = ""
        self.isRemettence = ""
        self.name = "Seleccione"
        //self.productIntegrationTypeId = ""
        self.ratesUrl = ""
        self.referenceCode = ""
        self.symbol = ""
        self.taxInclude = ""
    }
    
    enum CodingKeys: String, CodingKey {
        case accessNumberUrl = "accessNumberUrl"
        //case categoryId = "categoryId"
        case currentBalance = "currentBalance"
        case enabled = "enabled"
        //case enterpriseId = "enterpriseId"
        case id = "id"
        case isAlocashProduct = "isAlocashProduct"
        case isExchangeProduct = "isExchangeProduct"
        case isFree = "isFree"
        case isPayTopUp = "isPayTopUp"
        case isPaymentInfo = "isPaymentInfo"
        case isRemettence = "isRemettence"
        case name = "name"
        //case productIntegrationTypeId = "productIntegrationTypeId"
        case ratesUrl = "ratesUrl"
        case referenceCode = "referenceCode"
        case symbol = "symbol"
        case taxInclude = "taxInclude"
     }
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(accessNumberUrl)
     //hasher.combine(categoryId)
        hasher.combine(currentBalance)
        hasher.combine(enabled)
        //hasher.combine(enterpriseId)
        hasher.combine(id)
        hasher.combine(isAlocashProduct)
        hasher.combine(isExchangeProduct)
        hasher.combine(isFree)
        hasher.combine(isPayTopUp)
        hasher.combine(isPaymentInfo)
        hasher.combine(isRemettence)
        hasher.combine(name)
        //hasher.combine(productIntegrationTypeId)
        hasher.combine(ratesUrl)
        hasher.combine(referenceCode)
        hasher.combine(symbol)
        hasher.combine(taxInclude)
    }
}

struct Categoria: Decodable{
    var enabled : String
    var id : String
    var name : String
    
    enum CodingKeys: String, CodingKey {
        case enabled = "enabled"
        case id = "id"
        case name = "name"
    }
}

struct EnterpriseId: Decodable{
    var address : String
    var atcNumber : String
    var countryId : [CountryId]
    var currencyId : [CurrencyId]
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

struct CountryId: Decodable{
    var alternativeName3 : String
    var code : String
    var id : String
    var name : String
    var shortName : String
    
    enum CodingKeys: String, CodingKey {
        case alternativeName3 = "alternativeName3"
        case code = "code"
        case id = "id"
        case name = "name"
        case shortName = "shortName"
    }
}

struct CurrencyId: Decodable{
    var id : String
    var name : String
    var symbol : String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case symbol = "symbol"
    }
}

struct ProductsIntegrationType: Decodable{
    var id : String
    var name : String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
}
