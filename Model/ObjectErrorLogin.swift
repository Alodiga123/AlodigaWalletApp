//
//  ObjectErrorLogin.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/8/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
//
//  response.swift
//  webServices
//
//  Created by Adira Quintero on 10/1/20.
//  Copyright © 2020 Adira Quintero. All rights reserved.
//

import Foundation

struct ObjectErrorLogin: Decodable{
    var envelope: EnvelopeLoginError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeLoginError : Decodable{
       var xmlns : String
       var body : BodyLoginError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyLoginError : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:loginAplicacionMovilResponse"
         }
    }

