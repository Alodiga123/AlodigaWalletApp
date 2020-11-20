//
//  ObjectCodeOprationError.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/19/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

struct ObjectCodeOperationError: Decodable{
    var envelope: EnvelopeCodeOperation
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeCodeOperation : Decodable{
       var xmlns : String
       var body : BodyCodeOperation
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyCodeOperation : Decodable{
        var cambiar: CodeOperation
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:validarPinResponse"
         }
    }

    struct CodeOperation: Decodable{
       var _xmlns : String
       var _return : ReturnCodeOperation
        
        enum CodingKeys: String, CodingKey {
             case _xmlns = "_xmlns:ns2"
             case _return = "return"
         }
    }
    
    struct ReturnCodeOperation : Decodable{
       var fechaHora : String
       var codigoRespuesta : String
       var mensajeRespuesta : String
        
        enum CodingKeys: String, CodingKey {
             case fechaHora = "fechaHora"
             case codigoRespuesta = "codigoRespuesta"
             case mensajeRespuesta = "mensajeRespuesta"

         }
    }
