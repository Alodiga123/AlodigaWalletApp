//
//  ObjectErrorPassForgot.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 16/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorPassForgot: Decodable{
    var envelope: EnvelopePassForgotError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopePassForgotError : Decodable{
   var xmlns : String
   var body : BodyPassForgotError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyPassForgotError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:cambiarCredencialAplicacionMovilEmailOrPhoneResponse"
     }
}

