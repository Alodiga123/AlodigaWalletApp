//
//  ObjectKeyEncript.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/21/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectKeyEncript: Decodable{
    var envelope: EnvelopeKey
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeKey : Decodable{
       var xmlns : String
       var body : BodyKey
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyKey : Decodable{
        var cambiar: CodeKey
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:testEcnriptResponse"
         }
    }

    struct CodeKey: Decodable{
       var _xmlns : String
       var _return : String
        
        enum CodingKeys: String, CodingKey {
             case _xmlns = "_xmlns:ns2"
             case _return = "return"
         }
    }
    

