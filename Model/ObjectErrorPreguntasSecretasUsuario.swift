//
//  ObjectErrorPreguntasSecretasUsuario.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 24/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectErrorPreguntasSecretasUsuario: Decodable{
    var envelope: EnvelopePreguntasSecretasUsuarioError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopePreguntasSecretasUsuarioError : Decodable{
   var xmlns : String
   var body : BodyPreguntasSecretasUsuarioError
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}
    
struct BodyPreguntasSecretasUsuarioError : Decodable{
    var cambiar: Credencial
    
    enum CodingKeys: String, CodingKey {
         case cambiar = "ns2:getPreguntasSecretasResponse"
     }
}

