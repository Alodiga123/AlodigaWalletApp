//
//  ObjectPreguntasSecretasUsuario.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 24/11/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation


struct ObjectPreguntasSecretasUsuario: Decodable{
    var envelope: EnvelopePreguntasSecretasUsuario
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopePreguntasSecretasUsuario : Decodable{
       var xmlns : String
       var body : BodyPreguntasSecretasUsuario
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyPreguntasSecretasUsuario : Decodable{
    var registerMovilResponse: SecretPreguntasSecretasUsuarioResponse
    
    enum CodingKeys: String, CodingKey {
         case registerMovilResponse = "ns2:setPreguntasSecretasUsuarioAplicacionMovilResponse"
     }
}

struct SecretPreguntasSecretasUsuarioResponse: Decodable{
   var _xmlns : String
   var _return : ReturnPreguntasSecretasUsuario
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}

struct ReturnPreguntasSecretasUsuario : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : String
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
     }
}
