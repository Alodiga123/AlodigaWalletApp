//
//  ObjectDocumentPersonTypeByContry.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 13/4/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

struct ObjectDocumentPersonTypeByContry: Decodable{
    var envelope: EnvelopeDocumentByCountry
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

struct EnvelopeDocumentByCountry : Decodable{
   var xmlns : String
   var body : BodyDocumentByCountry
   
   enum CodingKeys: String, CodingKey {
        case xmlns = "_xmlns:S"
        case body = "S:Body"
    }
}

struct BodyDocumentByCountry : Decodable{
    var documentByCountryResponse: DocumentByCountryMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case documentByCountryResponse = "ns2:getDocumentPersonTypeByCountryResponse"
     }
}

struct DocumentByCountryMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnDocumentByCountry
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnDocumentByCountry : Decodable{
    var fechaHora : String
    var codigoRespuesta : String
    var mensajeRespuesta : MensajeRespuestaDoc
    var documentsPersonTypes : [DocumentsPersonTypes]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
         case documentsPersonTypes = "documentsPersonTypes"
     }
}


struct DocumentsPersonTypes: Identifiable, Decodable, Hashable{
    var codeIdentification : String
    var description : String
    var id : String
    
    init( ) {
        self.codeIdentification = ""
        self.description  = "Seleccione"
        self.id  = ""
    }

    enum CodingKeys: String, CodingKey {
        case codeIdentification = "codeIdentification"
        case description = "description"
        case id = "id"
     }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(codeIdentification)
        hasher.combine(description)
        hasher.combine(id)
    }
}

struct MensajeRespuestaDoc: Decodable{
    
}

