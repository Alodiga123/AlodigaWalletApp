//
//  ObjectErrorCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 30/04/21.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectErrorProductsPayTopUpByUser: Decodable{
    var envelope: EnvelopeProductsPayTopUpByUserError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeProductsPayTopUpByUserError : Decodable{
   var xmlns : String
   var body : BodyProductsPayTopUpByUserError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyProductsPayTopUpByUserError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getProductsPayTopUpByUserIdResponse "
     }
}

