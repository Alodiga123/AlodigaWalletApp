//
//  ObjectErrorCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 22/4/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorAccountTypeBank: Decodable{
    var envelope: EnvelopeAccountTypeBankError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeAccountTypeBankError : Decodable{
       var xmlns : String
       var body : BodyAccountTypeBankError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyAccountTypeBankError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getAccountTypeBankResponse"
         }
    }

