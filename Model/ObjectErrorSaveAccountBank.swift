//
//  ObjectErrorCountry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 23/4/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorSaveAccountBank: Decodable{
    var envelope: EnvelopeSaveAccountBankError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeSaveAccountBankError : Decodable{
       var xmlns : String
       var body : BodySaveAccountBankError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodySaveAccountBankError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:saveAccountBankUserResponse"
         }
    }

