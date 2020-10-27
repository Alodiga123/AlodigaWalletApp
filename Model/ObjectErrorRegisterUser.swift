//
//  ObjectErrorRegisterUser.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 26/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorRegisterUser: Decodable{
    var envelope: EnvelopeRegisterError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
}

struct EnvelopeRegisterError : Decodable{
   var xmlns : String
   var body : BodyRegisterError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}
    
struct BodyRegisterError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:guardarUsuarioAplicacionMovilResponse"
     }
}

