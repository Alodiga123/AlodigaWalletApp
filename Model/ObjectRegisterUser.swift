//
//  ObjectRegisterUser.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 26/10/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation


struct ObjectRegisterUser: Decodable{
    var envelope: EnvelopeRegister
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeRegister : Decodable{
       var xmlns : String
       var body : BodyRegister
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyRegister : Decodable{
    var registerMovilResponse: RegisterMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case registerMovilResponse = "ns2:guardarUsuarioAplicacionMovilResponse"
     }
}

struct RegisterMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnRegister
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}

struct ReturnRegister : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : String
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
     }
}
