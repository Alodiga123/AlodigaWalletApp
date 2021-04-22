//
//  ObjectErrorCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 22/4/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjetcErrorCountryHasBank: Decodable{
    var envelope: EnvelopeCountryHasBankError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeCountryHasBankError : Decodable{
       var xmlns : String
       var body : BodyCountryHasBankError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyCountryHasBankError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getCountriesHasBankResponse"
         }
    }

