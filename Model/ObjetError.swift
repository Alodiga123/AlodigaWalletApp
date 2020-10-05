//
//  response.swift
//  webServices
//
//  Created by Adira Quintero on 10/1/20.
//  Copyright © 2020 Adira Quintero. All rights reserved.
//

import Foundation

struct ObjectError: Decodable{
    var envelope: Envelope
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct Envelope : Decodable{
       var xmlns : String
       var body : Body
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct Body : Decodable{
        var cambiar: Credencial
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:cambiarCredencialAplicacionMovilEmailOrPhoneResponse"
         }
    }

    struct Credencial: Decodable{
       var _xmlns : String
       var _return : Return
        
        enum CodingKeys: String, CodingKey {
             case _xmlns = "_xmlns:ns2"
             case _return = "return"
         }
    }
    
    struct Return : Decodable{
       var fechaHora : String
       var codigoRespuesta : String
       var mensajeRespuesta : String
        
        enum CodingKeys: String, CodingKey {
             case fechaHora = "fechaHora"
             case codigoRespuesta = "codigoRespuesta"
             case mensajeRespuesta = "mensajeRespuesta"

         }
    }
