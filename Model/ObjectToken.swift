//
//  ObjectToken.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Guiterrez on 28/10/20.
//  Copyright © 2020 Lulymar Guiterrez. All rights reserved.
//

import Foundation

struct ObjectToken: Decodable{
    var envelope: EnvelopeToken
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeToken : Decodable{
       var xmlns : String
       var body : BodyToken
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyToken : Decodable{
    var tokenResponse: TokenResponse
    
    enum CodingKeys: String, CodingKey {
         case tokenResponse = "ns2:getCountriesResponse"
     }
}

struct TokenResponse: Decodable{
   var _xmlns : String
   var _return : ReturnToken
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnToken : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
   //var mensajeRespuesta : MensajeRespuesta
    var countries : [Country]
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         //case mensajeRespuesta = "mensajeRespuesta"
         case countries = "countries"
     }
}


struct Token: Decodable{
    var alternativeName3 : String
    var code : String
    var id : String
    var name : String
    var shortName : String

    enum CodingKeys: String, CodingKey {
        case alternativeName3 = "alternativeName3"
        case code = "code"
        case id = "id"
        case name = "name"
        case shortName = "shortName"
     }
}

//func getContryData(url: String, completion:@escaping([JSONData])->()){
//    let session = URLSession(configuration: .default)
//
//    session.dataTask(with: URL(string: url)!){(data, _, err) in
//        if url != nil{
//            print(err?.localizedDescription)
//            return
//        }
//    }
//}
