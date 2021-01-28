//
//  ObjectErrorManualWithdrawals.swift
//  IOSAlodigaWalletApp
//
//  Created by mac on 12/10/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectErrorManualWithdrawals: Decodable{
    var envelope: EnvelopeManualWithdrawalsError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeManualWithdrawalsError : Decodable{
   var xmlns : String
   var body : BodyManualWithdrawalsError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyManualWithdrawalsError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:manualWithdrawalsResponse"
     }
}

