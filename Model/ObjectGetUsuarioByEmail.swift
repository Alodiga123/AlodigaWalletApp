//
//  ObjectGetUsuarioByEmail.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/16/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation



struct ObjectGetUsuarioByEmail: Decodable{
    var envelope: EnvelopeGetUsuarioByEmail
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeGetUsuarioByEmail : Decodable{
       var xmlns : String
       var body : BodyGetUsuarioByEmail
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyGetUsuarioByEmail : Decodable{
    var getUsuarioByEmailResponse: GetUsuarioByEmailResponse
    
    enum CodingKeys: String, CodingKey {
         case getUsuarioByEmailResponse = "ns2:getUsuarioporemailResponse"
     }
}

struct GetUsuarioByEmailResponse: Decodable{
   var _xmlns : String
   var _return : ReturnGetUsuarioByEmail
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnGetUsuarioByEmail : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   var mensajeRespuesta : String
    var datosRespuesta : DatoRespuestaLogin
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
        case datosRespuesta = "datosRespuesta"
        

     }
}
