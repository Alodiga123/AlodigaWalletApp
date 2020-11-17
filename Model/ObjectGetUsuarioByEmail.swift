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
    var getUsuarioByEmailResponse: GetUsuarioResponse
    
    enum CodingKeys: String, CodingKey {
         case getUsuarioByEmailResponse = "ns2:getUsuarioporemailResponse"
     }
}

struct GetUsuarioResponse: Decodable{
   var _xmlns : String
   var _return : ReturnGetUsuario
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnGetUsuario : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
    var datosRespuesta : DatosRepuestaGetUsuario
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
        case datosRespuesta = "datosRespuesta"
        

     }
}

struct DatosRepuestaGetUsuario : Decodable{
    var UsuarioID: String
    var apellido: String
    var credencial: String
    var credencialFecha: String
    var email: String
    var fechaNacimiento: String
    var intentosFallidos: String
    var movil: String
    var nombre: String
    var aplicaciones : [AplicacionesGetUsuario]
    var countrySourceId: String
    var direccion: DireccionUsuario
    var estado: EstadoUsuario
    var imagen: ImagenUsuario
    var cuenta: CuentaUsuario
    var genero: String
    var telefonoResidencial: String
    var ocupacion: OcupacionUsuario
    var tipoDocumento: TipoDocumentoUsuario
    var numeroDocumento: String
    var perfilAloRrp: PerfilAloRrpUsuario
    var pin: String
    var remettencesDireccionId: String
    
    
    enum CodingKeys: String, CodingKey {
        case UsuarioID = "UsuarioID"
        case apellido = "apellido"
        case credencial = "credencial"
        case credencialFecha = "credencialFecha"
        case email = "email"
        case fechaNacimiento = "fechaNacimiento"
        case intentosFallidos = "intentosFallidos"
        case movil = "movil"
        case nombre = "nombre"
        case aplicaciones = "aplicaciones"
        case countrySourceId = "countrySourceId"
        case direccion = "direccion"
        case estado = "estado"
        case imagen = "imagen"
        case cuenta = "cuenta"
        case genero = "genero"
        case telefonoResidencial = "telefonoResidencial"
        case ocupacion = "ocupacion"
        case tipoDocumento = "tipoDocumento"
        case numeroDocumento = "numeroDocumento"
        case perfilAloRrp = "perfilAloRrp"
        case pin = "pin"
        case remettencesDireccionId = "remettencesDireccionId"
     }
}


struct AplicacionesGetUsuario: Decodable {
    var aplicacionId: String
    var nombre: String
    
    enum CodingKeys: String, CodingKey {
         case aplicacionId = "aplicacionId"
         case nombre = "nombre"
     }
}

struct DireccionUsuario: Decodable {
    var ciudadId: String
    var codigoPostal: String
    var condadoId: String
    var direccion: String
    var direccionId: String
    var estadoId: String
    var paisId: String
  
    enum CodingKeys: String, CodingKey {
         case ciudadId = "ciudadId"
         case codigoPostal = "codigoPostal"
        case condadoId = "condadoId"
        case direccion = "direccion"
        case direccionId = "direccionId"
        case estadoId = "estadoId"
        case paisId = "paisId"
     }
}


struct EstadoUsuario: Decodable {
    var descripcion: String
    var estadoId: String
    
    enum CodingKeys: String, CodingKey {
         case descripcion = "descripcion"
         case estadoId = "estadoId"
     }
}


struct ImagenUsuario: Decodable {
    var imagen: String
    var imagenId: String
    var nombre: String
    
    enum CodingKeys: String, CodingKey {
         case imagen = "imagen"
         case imagenId = "imagenId"
        case nombre = "nombre"

     }
}


struct CuentaUsuario: Decodable{
    var cuentaId: String
    var numeroCuenta : String
    var saldoAlocoins : String
    var saldoAlodiga : String
    var saldoHealthCareCoins : String
    
    enum CodingKeys: String, CodingKey {
        case cuentaId = "cuentaId"
        case numeroCuenta = "numeroCuenta"
        case saldoAlocoins = "saldoAlocoins"
        case saldoAlodiga = "saldoAlodiga"
        case saldoHealthCareCoins = "saldoHealthCareCoins"

     }
}

struct OcupacionUsuario: Decodable{
    var nombre: String
    var nombreAlternativo : String
    var ocupacionId : String
    
    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case nombreAlternativo = "nombreAlternativo"
        case ocupacionId = "ocupacionId"
     }
}

struct TipoDocumentoUsuario: Decodable{
    var nombre: String
    var tipoDocumentoId : String
    
    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case tipoDocumentoId = "tipoDocumentoId"
     }
}

struct PerfilAloRrpUsuario: Decodable{
    var distribuidorPadreId: String
    var empresaId : String
    var isAffiliatedKit : String
    var usuarioAloRRPId : String

    enum CodingKeys: String, CodingKey {
        case distribuidorPadreId = "distribuidorPadreId"
        case empresaId = "empresaId"
        case isAffiliatedKit = "isAffiliatedKit"
        case usuarioAloRRPId = "usuarioAloRRPId"

     }
}
