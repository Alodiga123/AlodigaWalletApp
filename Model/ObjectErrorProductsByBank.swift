//
//  ObjectErrorProductsByBank.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 04/12/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorProductsByBank: Decodable{
    var envelope: EnvelopeProductsByBankError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeProductsByBankError : Decodable{
   var xmlns : String
   var body : BodyProductsByBankError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyProductsByBankError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getProductsByBankIdResponse"
     }
}

