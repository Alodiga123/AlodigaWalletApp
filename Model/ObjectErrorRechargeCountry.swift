//
//  ObjectErrorRechargeCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectErrorCountryRecharge: Decodable{
    var envelope: EnvelopeCountryErrorRecharge
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeCountryErrorRecharge : Decodable{
       var xmlns : String
       var body : BodyCountryErrorRecharge
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyCountryErrorRecharge : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getCountriesHasBankResponse"
         }
    }

