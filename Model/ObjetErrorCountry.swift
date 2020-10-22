//
//  ObjectErrorCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 10/8/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorCountry: Decodable{
    var envelope: EnvelopeCountryError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeCountryError : Decodable{
       var xmlns : String
       var body : BodyCountryError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyCountryError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getCountriesResponse"
         }
    }

