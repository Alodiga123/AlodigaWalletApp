//
//  ObjectGetUsuarioByMovil.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/16/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation


struct ObjectGetUsuarioByMovil: Decodable{
    var envelope: EnvelopeGetUsuarioByMovil
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeGetUsuarioByMovil : Decodable{
       var xmlns : String
       var body : BodyGetUsuarioByMovil
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyGetUsuarioByMovil : Decodable{
    var getUsuarioByMovilResponse: GetUsuarioResponse
    
    enum CodingKeys: String, CodingKey {
         case getUsuarioByMovilResponse = "ns2:getUsuariopormovilResponse"
     }
}
