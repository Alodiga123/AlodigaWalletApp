//
//  ObjectLogin.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/7/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation


struct ObjectLogin: Decodable{
    var envelope: EnvelopeLogin
    
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeLogin : Decodable{
       var xmlns : String
       var body : BodyLogin
       
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyLogin : Decodable{
    var aplicacionMovilResponse: AplicacionMovilResponse
    
    enum CodingKeys: String, CodingKey {
         case aplicacionMovilResponse = "ns2:loginAplicacionMovilResponse"
     }
}

struct AplicacionMovilResponse: Decodable{
   var _xmlns : String
   var _return : ReturnLogin
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnLogin : Decodable{
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

struct DatoRespuestaLogin : Decodable{
    var usuarioID: String
    var apellido: String
    var credencial : String
    var credencialFecha: String
    var email: String
    var fechaNacimiento: String
    var intentosFallidos: String
    var movil: String
    var nombre: String
    var aplicaciones: [AplicacionesLogin]
    var respuestaListadoProductos : [ListadoProductos]
    var cumplimient: String
    var prepayCardAsociate: String
    var prepayCard : String
    var numberCard: String
    var countrySourceId: String
    var direccion: DireccionLogin
    var estado: EstadoLogin
    var imagen: ImagenLogin
    var cuenta : CuentaLogin
    var genero : String
    var telefonoResidencial : String
    var ocupacion: OcupacionLogin
    var tipoDocumento: TipoDocumentoLogin
    var numeroDocumento : String
    var perfilAloRrp: PerfilAloRrpLogin
    var pin: String
    var remettencesDireccionId: String
    
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
       case aplicaciones = "aplicaciones"
       case respuestaListadoProductos = "respuestaListadoProductos"
       case cumplimient = "cumplimient"
       case prepayCardAsociate = "prepayCardAsociate"
       case prepayCard = "prepayCard"
       case numberCard = "numberCard"
       case countrySourceId = "countrySourceId"
       case direccion = "direccion"
       case estado = "estado"
       case imagen = "imagen"
       case cuenta = "cuenta"
        case genero = "genero"
        case telefonoResidencial = "telefonoResidencial"
       case  ocupacion = "ocupacion"
        case tipoDocumento = "tipoDocumento"
        case numeroDocumento = "numeroDocumento"
        case perfilAloRrp  = "perfilAloRrp"
        case pin = "pin"
          case remettencesDireccionId = "remettencesDireccionId"


     }
}

struct AplicacionesLogin: Decodable{
   var aplicacionId : String
   var nombre : String
    
    enum CodingKeys: String, CodingKey {
         case aplicacionId = "aplicacionId"
         case nombre = "nombre"
     }
}

struct ListadoProductos: Decodable{
   var id : String
   var isPayTopUP : String
    var nombreProducto : String
    var saldoActual : String
    var simbolo : String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case isPayTopUP = "isPayTopUP"
        case nombreProducto = "nombreProducto"
        case saldoActual = "saldoActual"
        case simbolo = "simbolo"
     }
}


struct DireccionLogin: Decodable{
    var ciudadId: String
    var codigoPostal : String
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

struct EstadoLogin: Decodable{
    var descripcion: String
    var estadoId : String

    
    enum CodingKeys: String, CodingKey {
        case descripcion = "descripcion"
        case estadoId = "estadoId"
     }
}

struct ImagenLogin: Decodable{
    var imagen: String
    var imagenId : String
    var nombre : String
    
    enum CodingKeys: String, CodingKey {
        case imagen = "imagen"
        case imagenId = "imagenId"
        case nombre = "nombre"

     }
}


struct CuentaLogin: Decodable{
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

struct OcupacionLogin: Decodable{
    var nombre: String
    var nombreAlternativo : String
    var ocupacionId : String
    
    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case nombreAlternativo = "nombreAlternativo"
        case ocupacionId = "ocupacionId"
     }
}

struct TipoDocumentoLogin: Decodable{
    var nombre: String
    var tipoDocumentoId : String
    
    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case tipoDocumentoId = "tipoDocumentoId"
     }
}


struct PerfilAloRrpLogin: Decodable{
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
