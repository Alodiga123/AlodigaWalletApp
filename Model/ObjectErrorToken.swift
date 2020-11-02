//
//  ObjectErrorToken.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 28/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorToken: Decodable{
    var envelope: EnvelopeTokenError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeTokenError : Decodable{
   var xmlns : String
   var body : BodyTokenError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyTokenError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getCountriesResponse"
     }
}

