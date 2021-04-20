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
    var datosRespuesta : DatoRespuestaRegister
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
         case mensajeRespuesta = "mensajeRespuesta"
        case datosRespuesta = "datosRespuesta"
     }
}

struct DatoRespuestaRegister : Decodable{
    var usuarioID: String?
    var apellido: String?
    var credencial : String?
    var credencialFecha: String?
    var email: String?
    var fechaNacimiento: String?
    var intentosFallidos: String?
    var movil: String?
    var nombre: String?
    var countrySourceId: String?
    var direccion: DireccionLogin?
    var estado: EstadoLogin?
    var imagen: ImagenLogin?
    var cuenta : CuentaLogin?
    var tipoDocumento: TipoDocumentoLogin?
    var numeroDocumento : String?
    var pin: String?
    
    enum CodingKeys: String, CodingKey {
       case usuarioID = "UsuarioID"
       case apellido = "apellido"
       case credencial = "credencial"
       case credencialFecha = "credencialFecha"
       case email = "email"
       case fechaNacimiento = "fechaNacimiento"
       case intentosFallidos = "intentosFallidos"
       case movil = "movil"
       case nombre = "nombre"
       case countrySourceId = "countrySourceId"
       case direccion = "direccion"
       case estado = "estado"
       case imagen = "imagen"
       case cuenta = "cuenta"
       case tipoDocumento = "tipoDocumento"
       case numeroDocumento = "numeroDocumento"
       case pin = "pin"
     }
        
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        usuarioID = try container.decodeIfPresent(String.self, forKey: .usuarioID)
        apellido = try container.decodeIfPresent(String.self, forKey: .apellido)
        credencial = try container.decodeIfPresent(String.self, forKey: .credencial)
        credencialFecha = try container.decodeIfPresent(String.self, forKey: .credencialFecha)
        email = try container.decodeIfPresent(String.self, forKey: .email)
        fechaNacimiento = try container.decodeIfPresent(String.self, forKey: .fechaNacimiento)
        intentosFallidos = try container.decodeIfPresent(String.self, forKey: .intentosFallidos)
        movil = try container.decodeIfPresent(String.self, forKey: .movil)
        nombre = try container.decodeIfPresent(String.self, forKey: .nombre)
        countrySourceId = try container.decodeIfPresent(String.self, forKey: .countrySourceId)
        direccion = try container.decodeIfPresent(DireccionLogin.self, forKey: .direccion)
        estado = try container.decodeIfPresent(EstadoLogin.self, forKey: .estado)
        imagen = try container.decodeIfPresent(ImagenLogin.self, forKey: .imagen)
        cuenta = try container.decodeIfPresent(CuentaLogin.self, forKey: .cuenta)
        tipoDocumento = try container.decodeIfPresent(TipoDocumentoLogin.self, forKey: .tipoDocumento)
        numeroDocumento = try container.decodeIfPresent(String.self, forKey: .numeroDocumento)
        pin = try container.decodeIfPresent(String.self, forKey: .pin)

    }
}
