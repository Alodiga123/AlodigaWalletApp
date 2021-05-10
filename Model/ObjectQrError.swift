//
//  ObjectQrError.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 5/10/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation


struct ObjectErrorQr: Decodable{
    var envelope: EnvelopeErrorQr
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeErrorQr : Decodable{
       var xmlns : String
       var body : BodyErrorQr
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyErrorQr : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:getBusinessInfoByCryptogramResponse"
         }
    }
