//
//  ObjectLogin.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 30/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation


struct ObjectProductsPayTopUpByUser: Decodable{
    var envelope: EnvelopeProductsPayTopUpByUser
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeProductsPayTopUpByUser : Decodable{
   var xmlns : String
   var body : BodyProductsPayTopUpByUser
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyProductsPayTopUpByUser: Decodable{
    var productsPayTopUpByUserMovilResponse: ProductsPayTopUpByUserMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case productsPayTopUpByUserMovilResponse = "ns2:getProductsPayTopUpByUserIdResponse "
     }
}

struct ProductsPayTopUpByUserMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnProductsPayTopUpByUser
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnProductsPayTopUpByUser: Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : String
    var products : DatoRespuestaProductos
    
    enum CodingKeys: String, CodingKey {
        case fechaHora = "fechaHora"
        case codigoRespuesta = "codigoRespuesta"
        case mensajeRespuesta = "mensajeRespuesta"
        case products = "products"
     }
}

struct DatoRespuestaProductos : Decodable{
    var categoryId: [CategoriaProducto]?
    var countryId: [CountryProducto]?
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
        
        categoryId = try container.decodeIfPresent([FailableDecodable<CategoriaProducto>].self, forKey: .categoryId)?
            .compactMap { $0.base } // .flatMap in Swift 4.0
        countryId = try container.decodeIfPresent([FailableDecodable<CountryProducto>].self, forKey: .countryId)?
            .compactMap { $0.base } // .flatMap in Swift 4.0
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

struct CategoriaProducto: Identifiable, Decodable, Hashable  {
    var id: String
    var name: String
    
    enum CodingKeys: String, CodingKey {
         case id = "id"
         case name = "name"
     }
    
    init() {
        self.id = ""
        self.name  = ""
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
}

struct CountryProducto: Identifiable, Decodable, Hashable  {
    var alternativeName3: String
    var code: String
    var id: String
    var name: String
    var shortName: String
    
    init() {
        self.alternativeName3 = ""
        self.code  = ""
        self.id = ""
        self.name  = ""
        self.shortName  = ""
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
