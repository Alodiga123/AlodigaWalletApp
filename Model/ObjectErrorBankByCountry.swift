//
//  ObjectErrorBankByCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 03/12/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorBankByCountry: Decodable{
    var envelope: EnvelopeBankByCountryError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeBankByCountryError : Decodable{
   var xmlns : String
   var body : BodyBankByCountryError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyBankByCountryError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getBankByCountryAppResponse"
     }
}

