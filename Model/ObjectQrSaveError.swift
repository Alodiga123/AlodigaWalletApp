//
//  ObjectQrSaveError.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 5/11/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation


struct ObjectQrSaveError: Decodable{
    var envelope: EnvelopeErrorQrSave
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeErrorQrSave : Decodable{
       var xmlns : String
       var body : BodyErrorQrSave
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyErrorQrSave : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:savePaymentShopResponse"
         }
    }
