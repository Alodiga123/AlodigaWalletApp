//
//  ObjectGetUsuarioByMovilError.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/16/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectErrorGetUsuarioByMovil: Decodable{
    var envelope: EnvelopeGetUsuarioByMovilError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeGetUsuarioByMovilError : Decodable{
       var xmlns : String
       var body : BodyGetUsuarioByMovilError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyGetUsuarioByMovilError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getUsuariopormovilResponse"
         }
    }
