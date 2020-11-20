//
//  ObjectProccesTransferenceError.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/20/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation


struct ObjectProcessTransferenceError: Decodable{
    var envelope: EnvelopeProcessTransferenceError
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeProcessTransferenceError : Decodable{
       var xmlns : String
       var body : BodyProcessTransferenceError
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }
    
    struct BodyProcessTransferenceError : Decodable{
        var cambiar: ProcessTransference
        
        enum CodingKeys: String, CodingKey {
             case cambiar = "ns2:saveTransferBetweenAccountResponse"
         }
    }

    struct ProcessTransference: Decodable{
       var _xmlns : String
       var _return : ReturnProcessTransference
        
        enum CodingKeys: String, CodingKey {
             case _xmlns = "_xmlns:ns2"
             case _return = "return"
         }
    }
    
    struct ReturnProcessTransference : Decodable{
       var fechaHora : String
       var codigoRespuesta : String
       var mensajeRespuesta : String
        
        enum CodingKeys: String, CodingKey {
             case fechaHora = "fechaHora"
             case codigoRespuesta = "codigoRespuesta"
             case mensajeRespuesta = "mensajeRespuesta"

         }
    }
