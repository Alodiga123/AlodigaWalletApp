//
//  ObjectErrorManualWithdrawals.swift
//  IOSAlodigaWalletApp
//
//  Created by mac on 12/10/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectErrorManualRecharge: Decodable{
    var envelope: EnvelopeManualRechargeError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeManualRechargeError : Decodable{
   var xmlns : String
   var body : BodyManualRechargeError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyManualRechargeError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:manualRechargeResponse"
     }
}

