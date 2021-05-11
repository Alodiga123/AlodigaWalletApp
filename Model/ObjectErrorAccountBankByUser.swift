//
//  ObjectErrorCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 29/4/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorAccountBankByUser: Decodable{
    var envelope: EnvelopeAccountBankByUserError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeAccountBankByUserError : Decodable{
   var xmlns : String
   var body : BodyAccountBankByUserError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyAccountBankByUserError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getAccountBankByUserResponse"
     }
}

