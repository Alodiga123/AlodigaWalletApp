//
//  ObjectErrorTokenAplication.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 12/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorTokenAplication: Decodable{
    var envelope: EnvelopeTokenErrorAplication
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}


struct EnvelopeTokenErrorAplication : Decodable{
   var xmlns : String
   var body : BodyTokenErrorAplication
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}


struct BodyTokenErrorAplication : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:generarCodigoMovilSMSAplicacionMovilResponse"
     }
}
