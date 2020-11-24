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
    
    init(from decoder: Decoder) throws {
           let container = try decoder.container(keyedBy: CodingKeys.self)
        envelope = try container.decode(EnvelopeGetUsuarioByEmail.self, forKey: .envelope)}
        
    enum CodingKeys: String, CodingKey {
         case envelope = "S:Envelope"
     }
    
}

    struct EnvelopeGetUsuarioByEmail : Decodable{
       var xmlns : String
       var body : BodyGetUsuarioByEmail
       
        init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    xmlns = try container.decode(String.self, forKey: .xmlns)
            body = try container.decode(BodyGetUsuarioByEmail.self, forKey: .body)}
        
       enum CodingKeys: String, CodingKey {
            case xmlns = "_xmlns:S"
            case body = "S:Body"
        }
    }

struct BodyGetUsuarioByEmail : Decodable{
    var getUsuarioByEmailResponse: GetUsuarioResponse
    
    init(from decoder: Decoder) throws {
           let container = try decoder.container(keyedBy: CodingKeys.self)
        getUsuarioByEmailResponse = try container.decode(GetUsuarioResponse.self, forKey: .getUsuarioByEmailResponse)}
        
    enum CodingKeys: String, CodingKey {
         case getUsuarioByEmailResponse = "ns2:getUsuarioporemailResponse"
     }
}

struct GetUsuarioResponse: Decodable{
   var _xmlns : String
   var _return : ReturnGetUsuario
    
    init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            _xmlns = try container.decode(String.self, forKey: ._xmlns)
        _return = try container.decode(ReturnGetUsuario.self, forKey: ._return)}
    
    enum CodingKeys: String, CodingKey {
         case _xmlns = "_xmlns:ns2"
         case _return = "return"
     }
}


struct ReturnGetUsuario : Decodable{
   var fechaHora : String
   var codigoRespuesta : String
    var datosRespuesta : DatosRepuestaGetUsuario
    
    init(from decoder: Decoder) throws {
           let container = try decoder.container(keyedBy: CodingKeys.self)
           fechaHora = try container.decode(String.self, forKey: .fechaHora)
           codigoRespuesta = try container.decode(String.self, forKey: .codigoRespuesta)
           datosRespuesta = try container.decode(DatosRepuestaGetUsuario.self, forKey: .datosRespuesta)
       }
    
    enum CodingKeys: String, CodingKey {
         case fechaHora = "fechaHora"
         case codigoRespuesta = "codigoRespuesta"
        case datosRespuesta = "datosRespuesta"
        

     }
}

struct DatosRepuestaGetUsuario : Decodable{
    var UsuarioID: String?
    var apellido: String?
    var credencial: String?
    var credencialFecha: String?
    var email: String?
    var fechaNacimiento: String?
    var intentosFallidos: String?
    var movil: String?
    var nombre: String?
    var aplicaciones : [AplicacionesGetUsuario]?
    var countrySourceId: String?
    var direccion: DireccionUsuario?
    var estado: EstadoUsuario?
    var imagen: ImagenUsuario?
    var cuenta: CuentaUsuario?
    var genero: String?
    var telefonoResidencial: String?
    var ocupacion: OcupacionUsuario?
    var tipoDocumento: TipoDocumentoUsuario?
    var numeroDocumento: String?
    var perfilAloRrp: PerfilAloRrpUsuario?
    var pin: String?
    var remettencesDireccionId: String?
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        //var container_array = try decoder.unkeyedContainer()
        
        UsuarioID = try container.decode(String.self, forKey: .UsuarioID)
        apellido = try container.decode(String.self, forKey: .apellido)
        credencial = try container.decode(String.self, forKey: .credencial)
        credencialFecha = try container.decode(String.self, forKey: .credencialFecha)
        email = try container.decode(String.self, forKey: .email)
        fechaNacimiento = try container.decode(String.self, forKey: .fechaNacimiento)
        intentosFallidos = try container.decode(String.self, forKey: .intentosFallidos)
        movil = try container.decode(String.self, forKey: .movil)
        nombre = try container.decode(String.self, forKey: .nombre)
        aplicaciones = try container.decode(Array<AplicacionesGetUsuario>.self, forKey: .aplicaciones)
        countrySourceId = try container.decode(String.self, forKey: .countrySourceId)
        direccion = try container.decode(DireccionUsuario.self, forKey: .direccion)//try DireccionLogin(from: DireccionLogin.self as! Decoder)
        estado = try container.decode(EstadoUsuario.self, forKey: .estado)//try EstadoLogin(from: EstadoLogin.self as! Decoder)
        imagen = try container.decode(ImagenUsuario.self, forKey: .imagen)//try ImagenLogin(from: ImagenLogin.self as! Decoder)
        cuenta = try container.decode(CuentaUsuario.self, forKey: .cuenta)//try CuentaLogin(from: CuentaLogin.self as! Decoder )
        genero  = try container.decode(String.self, forKey: .genero)
        telefonoResidencial = try container.decode(String.self, forKey: .telefonoResidencial)
        ocupacion = try container.decode(OcupacionUsuario.self, forKey: .ocupacion)//try OcupacionLogin(from: OcupacionLogin.self as! Decoder )
        tipoDocumento = try container.decode(TipoDocumentoUsuario.self, forKey: .tipoDocumento) //try TipoDocumentoLogin(from: TipoDocumentoLogin.self as! Decoder)
        numeroDocumento = try container.decode(String.self, forKey: .numeroDocumento)
        perfilAloRrp = try container.decode(PerfilAloRrpUsuario.self, forKey: .perfilAloRrp)//try PerfilAloRrpLogin(from: PerfilAloRrpLogin.self as! Decoder)
        pin = try container.decode(String.self, forKey: .pin)
        remettencesDireccionId = try container.decode(String.self, forKey: .remettencesDireccionId)
      }
    
    
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
    
    init(from decoder: Decoder) throws {
         let container = try decoder.container(keyedBy: CodingKeys.self)
         aplicacionId = try container.decode(String.self, forKey: .aplicacionId)
         nombre = try container.decode(String.self, forKey: .nombre)
     }
    
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
  
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        ciudadId = try container.decode(String.self, forKey: .ciudadId)
        codigoPostal = try container.decode(String.self, forKey: .codigoPostal)
        condadoId = try container.decode(String.self, forKey: .condadoId)
        direccion = try container.decode(String.self, forKey: .direccion)
        direccionId = try container.decode(String.self, forKey: .direccionId)
        estadoId = try container.decode(String.self, forKey: .estadoId)
        paisId = try container.decode(String.self, forKey: .paisId)

    }
    
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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        descripcion = try container.decode(String.self, forKey: .descripcion)
        estadoId = try container.decode(String.self, forKey: .estadoId)

    }
    enum CodingKeys: String, CodingKey {
         case descripcion = "descripcion"
         case estadoId = "estadoId"
     }
}


struct ImagenUsuario: Decodable {
    var imagen: String
    var imagenId: String
    var nombre: String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        imagen = try container.decode(String.self, forKey: .imagen)
        imagenId = try container.decode(String.self, forKey: .imagenId)
        nombre = try container.decode(String.self, forKey: .nombre)

    }
    
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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cuentaId = try container.decode(String.self, forKey: .cuentaId)
        numeroCuenta = try container.decode(String.self, forKey: .numeroCuenta)
        saldoAlocoins = try container.decode(String.self, forKey: .saldoAlocoins)
        saldoAlodiga = try container.decode(String.self, forKey: .saldoAlodiga)
        saldoHealthCareCoins = try container.decode(String.self, forKey: .saldoHealthCareCoins)
    }
    
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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        nombre = try container.decode(String.self, forKey: .nombre)
        nombreAlternativo = try container.decode(String.self, forKey: .nombreAlternativo)
        ocupacionId = try container.decode(String.self, forKey: .ocupacionId)

    }
    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case nombreAlternativo = "nombreAlternativo"
        case ocupacionId = "ocupacionId"
     }
}

struct TipoDocumentoUsuario: Decodable{
    var nombre: String
    var tipoDocumentoId : String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        nombre = try container.decode(String.self, forKey: .nombre)
        tipoDocumentoId = try container.decode(String.self, forKey: .tipoDocumentoId)

    }
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        distribuidorPadreId = try container.decode(String.self, forKey: .distribuidorPadreId)
        empresaId = try container.decode(String.self, forKey: .empresaId)
        isAffiliatedKit = try container.decode(String.self, forKey: .isAffiliatedKit)
        usuarioAloRRPId = try container.decode(String.self, forKey: .usuarioAloRRPId)

    }
    
    enum CodingKeys: String, CodingKey {
        case distribuidorPadreId = "distribuidorPadreId"
        case empresaId = "empresaId"
        case isAffiliatedKit = "isAffiliatedKit"
        case usuarioAloRRPId = "usuarioAloRRPId"

     }
}
