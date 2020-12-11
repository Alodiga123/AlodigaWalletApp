//
//  ObjectErrorValidateAccount.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 1/12/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorValidateAccount: Decodable{
    var envelope: EnvelopeValidateAccountError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeValidateAccountError : Decodable{
       var xmlns : String
       var body : BodyValidateAccountError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyValidateAccountError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:saveCumplimientResponse"
         }
    }

