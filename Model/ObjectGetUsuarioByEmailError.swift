//
//  ObjectGetUsuarioByEmailError.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/16/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectErrorGetUsuarioByEmail: Decodable{
    var envelope: GetUsuarioByMovilError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct GetUsuarioByMovilError : Decodable{
       var xmlns : String
       var body : BodyGetUsuarioByEmailError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyGetUsuarioByEmailError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getUsuarioporemailResponse"
         }
    }
