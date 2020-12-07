//
//  ObjetosRegistroUnificado.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/5/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation


/**
  Get Aplicaciones.
*/
@objc(GetAplicaciones)
public class GetAplicaciones : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Aplicaciones Response.
*/
@objc(GetAplicacionesResponse)
public class GetAplicacionesResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Aplicaciones.
*/
@objc(RespuestaListadoAplicaciones)
public class RespuestaListadoAplicaciones : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Respuesta.
*/
@objc(Respuesta)
public class Respuesta : SyedAbsarObjectBase {


/// Fecha Hora
var cpFechaHora: NSDate?

/// Codigo Respuesta
var cpCodigoRespuesta: String?

/// Mensaje Respuesta
var cpMensajeRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["FechaHora","CodigoRespuesta","MensajeRespuesta"]
}
}

/**
  Aplicacion.
*/
@objc(Aplicacion)
public class Aplicacion : SyedAbsarObjectBase {


/// Aplicacion Id
var cpAplicacionId: Int?

/// Nombre
var cpNombre: String?

override static func cpKeys() -> Array<String> {
return ["AplicacionId","Nombre"]
}
}

/**
  Guardar Perfil Alo R R P.
*/
@objc(GuardarPerfilAloRRP)
public class GuardarPerfilAloRRP : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Kit Afiliacion
var cpKitAfiliacion: Bool?

/// Empresa Id
var cpEmpresaId: String?

/// Distribuidor Padre Id
var cpDistribuidorPadreId: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","KitAfiliacion","EmpresaId","DistribuidorPadreId"]
}
}

/**
  Guardar Perfil Alo R R P Response.
*/
@objc(GuardarPerfilAloRRPResponse)
public class GuardarPerfilAloRRPResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Guardar Usuario.
*/
@objc(RespuestaGuardarUsuario)
public class RespuestaGuardarUsuario : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Usuario.
*/
@objc(Usuario)
public class Usuario : SyedAbsarObjectBase {


/// Usuario I D
var cpUsuarioID: Int?

/// Apellido
var cpApellido: String?

/// Credencial
var cpCredencial: String?

/// Credencial Fecha
var cpCredencialFecha: NSDate?

/// Email
var cpEmail: String?

/// Fecha Nacimiento
var cpFechaNacimiento: NSDate?

/// Intentos Fallidos
var cpIntentosFallidos: Int?

/// Movil
var cpMovil: String?

/// Nombre
var cpNombre: String?

/// Aplicaciones
var cpAplicaciones: String?

/// Respuesta Listado Productos
var cpRespuestaListadoProductos: String?

/// Cumplimient
var cpCumplimient: String?

/// Prepay Card Asociate
var cpPrepayCardAsociate: Bool?

/// Prepay Card
var cpPrepayCard: Bool?

/// Number Card
var cpNumberCard: String?

/// Country Source Id
var cpCountrySourceId: Int?

/// Direccion
var cpDireccion: String?

/// Estado
var cpEstado: String?

/// Imagen
var cpImagen: String?

/// Cuenta
var cpCuenta: String?

/// Genero
var cpGenero: String?

/// Telefono Residencial
var cpTelefonoResidencial: String?

/// Ocupacion
var cpOcupacion: String?

/// Tipo Documento
var cpTipoDocumento: String?

/// Numero Documento
var cpNumeroDocumento: String?

/// Perfil Alo Esp
var cpPerfilAloEsp: String?

/// Perfil Alo Pos
var cpPerfilAloPos: String?

/// Perfil Alo Rrp
var cpPerfilAloRrp: String?

/// Pin
var cpPin: String?

/// Remettences Direccion Id
var cpRemettencesDireccionId: Int?

/// Cuenta Bancarias
var cpCuentaBancarias: String?

/// Tarjeta Usuarios
var cpTarjetaUsuarios: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioID","Apellido","Credencial","CredencialFecha","Email","FechaNacimiento","IntentosFallidos","Movil","Nombre","Aplicaciones","RespuestaListadoProductos","Cumplimient","PrepayCardAsociate","PrepayCard","NumberCard","CountrySourceId","Direccion","Estado","Imagen","Cuenta","Genero","TelefonoResidencial","Ocupacion","TipoDocumento","NumeroDocumento","PerfilAloEsp","PerfilAloPos","PerfilAloRrp","Pin","RemettencesDireccionId","CuentaBancarias","TarjetaUsuarios"]
}
}

/**
  Respuesta Listado Producto.
*/
@objc(RespuestaListadoProducto)
public class RespuestaListadoProducto : SyedAbsarObjectBase {


/// Id
var cpId: CLong?

/// Is Pay Top U P
var cpIsPayTopUP: Bool?

/// Nombre Producto
var cpNombreProducto: String?

/// Saldo Actual
var cpSaldoActual: Float?

/// Simbolo
var cpSimbolo: String?

override static func cpKeys() -> Array<String> {
return ["Id","IsPayTopUP","NombreProducto","SaldoActual","Simbolo"]
}
}

/**
  Direccion.
*/
@objc(Direccion)
public class Direccion : SyedAbsarObjectBase {


/// Ciudad Id
var cpCiudadId: Int?

/// Codigo Postal
var cpCodigoPostal: String?

/// Condado Id
var cpCondadoId: Int?

/// Direccion
var cpDireccion: String?

/// Direccion Id
var cpDireccionId: Int?

/// Estado Id
var cpEstadoId: Int?

/// Pais Id
var cpPaisId: Int?

override static func cpKeys() -> Array<String> {
return ["CiudadId","CodigoPostal","CondadoId","Direccion","DireccionId","EstadoId","PaisId"]
}
}

/**
  Estado.
*/
@objc(Estado)
public class Estado : SyedAbsarObjectBase {


/// Descripcion
var cpDescripcion: String?

/// Estado Id
var cpEstadoId: Int?

override static func cpKeys() -> Array<String> {
return ["Descripcion","EstadoId"]
}
}

/**
  Imagen.
*/
@objc(Imagen)
public class Imagen : SyedAbsarObjectBase {


/// Imagen
var cpImagen: String?

/// Imagen Id
var cpImagenId: Int?

/// Nombre
var cpNombre: String?

override static func cpKeys() -> Array<String> {
return ["Imagen","ImagenId","Nombre"]
}
}

/**
  Cuenta.
*/
@objc(Cuenta)
public class Cuenta : SyedAbsarObjectBase {


/// Cuenta Id
var cpCuentaId: Int?

/// Numero Cuenta
var cpNumeroCuenta: String?

/// Saldo Alocoins
var cpSaldoAlocoins: String?

/// Saldo Alodiga
var cpSaldoAlodiga: String?

/// Saldo Health Care Coins
var cpSaldoHealthCareCoins: String?

override static func cpKeys() -> Array<String> {
return ["CuentaId","NumeroCuenta","SaldoAlocoins","SaldoAlodiga","SaldoHealthCareCoins"]
}
}

/**
  Ocupacion.
*/
@objc(Ocupacion)
public class Ocupacion : SyedAbsarObjectBase {


/// Nombre
var cpNombre: String?

/// Nombre Alternativo
var cpNombreAlternativo: String?

/// Ocupacion Id
var cpOcupacionId: Int?

override static func cpKeys() -> Array<String> {
return ["Nombre","NombreAlternativo","OcupacionId"]
}
}

/**
  Tipo Documento.
*/
@objc(TipoDocumento)
public class TipoDocumento : SyedAbsarObjectBase {


/// Nombre
var cpNombre: String?

/// Tipo Documento Id
var cpTipoDocumentoId: Int?

override static func cpKeys() -> Array<String> {
return ["Nombre","TipoDocumentoId"]
}
}

/**
  Perfil Alo E S P.
*/
@objc(PerfilAloESP)
public class PerfilAloESP : SyedAbsarObjectBase {


/// Ein Tienda
var cpEinTienda: String?

/// Idioma Envio
var cpIdiomaEnvio: String?

/// Monto Maximo Transacciones
var cpMontoMaximoTransacciones: String?

/// Nombre Tienda
var cpNombreTienda: String?

/// Perfil Alo E S P Id
var cpPerfilAloESPId: Int?

/// Razon Social
var cpRazonSocial: String?

/// Tax Tienda
var cpTaxTienda: String?

/// Telefono Establecimiento
var cpTelefonoEstablecimiento: String?

/// Tipo Cuenta
var cpTipoCuenta: String?

override static func cpKeys() -> Array<String> {
return ["EinTienda","IdiomaEnvio","MontoMaximoTransacciones","NombreTienda","PerfilAloESPId","RazonSocial","TaxTienda","TelefonoEstablecimiento","TipoCuenta"]
}
}

/**
  Perfil Alo Pos.
*/
@objc(PerfilAloPos)
public class PerfilAloPos : SyedAbsarObjectBase {


/// Empresa
var cpEmpresa: String?

/// Fecha Vencimiento Documento
var cpFechaVencimientoDocumento: NSDate?

/// Perfil Alo Pos Id
var cpPerfilAloPosId: Int?

/// Tipo Persona
var cpTipoPersona: String?

override static func cpKeys() -> Array<String> {
return ["Empresa","FechaVencimientoDocumento","PerfilAloPosId","TipoPersona"]
}
}

/**
  Empresa.
*/
@objc(Empresa)
public class Empresa : SyedAbsarObjectBase {


/// Cuenta Bancaria
var cpCuentaBancaria: String?

/// Direccion
var cpDireccion: String?

/// Ein
var cpEin: String?

/// Email
var cpEmail: String?

/// Empresa Id
var cpEmpresaId: Int?

/// Ingresos Estimados
var cpIngresosEstimados: String?

/// Nombre
var cpNombre: String?

/// Telefono
var cpTelefono: String?

/// Tipo Empresa
var cpTipoEmpresa: String?

override static func cpKeys() -> Array<String> {
return ["CuentaBancaria","Direccion","Ein","Email","EmpresaId","IngresosEstimados","Nombre","Telefono","TipoEmpresa"]
}
}

/**
  Cuenta Bancaria.
*/
@objc(CuentaBancaria)
public class CuentaBancaria : SyedAbsarObjectBase {


/// Cuenta Bancaria Id
var cpCuentaBancariaId: Int?

/// Numero Cuenta
var cpNumeroCuenta: String?

/// Numero Ruta
var cpNumeroRuta: String?

/// Banco
var cpBanco: String?

/// Cuenta Bancaria Tipo
var cpCuentaBancariaTipo: String?

/// Fecha Creacion
var cpFechaCreacion: NSDate?

override static func cpKeys() -> Array<String> {
return ["CuentaBancariaId","NumeroCuenta","NumeroRuta","Banco","CuentaBancariaTipo","FechaCreacion"]
}
}

/**
  Banco.
*/
@objc(Banco)
public class Banco : SyedAbsarObjectBase {


/// Banco Id
var cpBancoId: Int?

/// Country Id
var cpCountryId: Int?

/// Created By
var cpCreatedBy: String?

/// Created Date
var cpCreatedDate: NSDate?

/// Edited By
var cpEditedBy: String?

/// Edited Date
var cpEditedDate: NSDate?

/// Name
var cpName: String?

/// Version
var cpVersion: Int?

override static func cpKeys() -> Array<String> {
return ["BancoId","CountryId","CreatedBy","CreatedDate","EditedBy","EditedDate","Name","Version"]
}
}

/**
  Cuenta Bancaria Tipo.
*/
@objc(CuentaBancariaTipo)
public class CuentaBancariaTipo : SyedAbsarObjectBase {


/// Created By
var cpCreatedBy: String?

/// Created Date
var cpCreatedDate: NSDate?

/// Cuenta Bancaria Id
var cpCuentaBancariaId: Int?

/// Edited By
var cpEditedBy: String?

/// Edited Date
var cpEditedDate: NSDate?

/// Name
var cpName: String?

/// Version
var cpVersion: Int?

override static func cpKeys() -> Array<String> {
return ["CreatedBy","CreatedDate","CuentaBancariaId","EditedBy","EditedDate","Name","Version"]
}
}

/**
  Tipo Empresa.
*/
@objc(TipoEmpresa)
public class TipoEmpresa : SyedAbsarObjectBase {


/// Idioma
var cpIdioma: String?

/// Nombre
var cpNombre: String?

/// Tipo Empresa Id
var cpTipoEmpresaId: Int?

override static func cpKeys() -> Array<String> {
return ["Idioma","Nombre","TipoEmpresaId"]
}
}

/**
  Perfil Alo R R P.
*/
@objc(PerfilAloRRP)
public class PerfilAloRRP : SyedAbsarObjectBase {


/// Distribuidor Padre Id
var cpDistribuidorPadreId: Int?

/// Empresa Id
var cpEmpresaId: Int?

/// Is Affiliated Kit
var cpIsAffiliatedKit: Bool?

/// Usuario Alo R R P Id
var cpUsuarioAloRRPId: Int?

override static func cpKeys() -> Array<String> {
return ["DistribuidorPadreId","EmpresaId","IsAffiliatedKit","UsuarioAloRRPId"]
}
}

/**
  Tarjeta Usuario.
*/
@objc(TarjetaUsuario)
public class TarjetaUsuario : SyedAbsarObjectBase {


/// Id
var cpId: String?

/// Estado
var cpEstado: String?

/// Tarjeta
var cpTarjeta: String?

override static func cpKeys() -> Array<String> {
return ["Id","Estado","Tarjeta"]
}
}

/**
  Tarjeta Usuario P K.
*/
@objc(TarjetaUsuarioPK)
public class TarjetaUsuarioPK : SyedAbsarObjectBase {


/// Tarjeta Id
var cpTarjetaId: Int?

/// Usuario Id
var cpUsuarioId: Int?

override static func cpKeys() -> Array<String> {
return ["TarjetaId","UsuarioId"]
}
}

/**
  Tarjeta.
*/
@objc(Tarjeta)
public class Tarjeta : SyedAbsarObjectBase {


/// Codigo Seguridad
var cpCodigoSeguridad: Int?

/// Direccion
var cpDireccion: String?

/// Direccion Contacto
var cpDireccionContacto: String?

/// Email Contacto
var cpEmailContacto: String?

/// Estado Tarjeta Id
var cpEstadoTarjetaId: Int?

/// Fecha Creacion
var cpFechaCreacion: NSDate?

/// Fecha Vencimiento
var cpFechaVencimiento: String?

/// Nombre Tarjeta Habiente
var cpNombreTarjetaHabiente: String?

/// Numero Tarjeta
var cpNumeroTarjeta: String?

/// Tarjeta Id
var cpTarjetaId: Int?

/// Telefono Contacto
var cpTelefonoContacto: String?

/// Tipo Tarjeta
var cpTipoTarjeta: String?

override static func cpKeys() -> Array<String> {
return ["CodigoSeguridad","Direccion","DireccionContacto","EmailContacto","EstadoTarjetaId","FechaCreacion","FechaVencimiento","NombreTarjetaHabiente","NumeroTarjeta","TarjetaId","TelefonoContacto","TipoTarjeta"]
}
}

/**
  Guardar Perfil Alo Cash.
*/
@objc(GuardarPerfilAloCash)
public class GuardarPerfilAloCash : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Genero
var cpGenero: String?

/// Telefono Residencial
var cpTelefonoResidencial: String?

/// Ocupacion
var cpOcupacion: String?

/// Tipo Documento Id
var cpTipoDocumentoId: String?

/// Numero Documento
var cpNumeroDocumento: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Genero","TelefonoResidencial","Ocupacion","TipoDocumentoId","NumeroDocumento"]
}
}

/**
  Guardar Perfil Alo Cash Response.
*/
@objc(GuardarPerfilAloCashResponse)
public class GuardarPerfilAloCashResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Set Preguntas Secretas Usuario Aplicacion Movil.
*/
@objc(SetPreguntasSecretasUsuarioAplicacionMovil)
public class SetPreguntasSecretasUsuarioAplicacionMovil : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Pregunta Id1
var cpPreguntaId1: String?

/// Repuesta Id1
var cpRepuestaId1: String?

/// Pregunta Id2
var cpPreguntaId2: String?

/// Repuesta Id2
var cpRepuestaId2: String?

/// Pregunta Id3
var cpPreguntaId3: String?

/// Repuesta Id3
var cpRepuestaId3: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","PreguntaId1","RepuestaId1","PreguntaId2","RepuestaId2","PreguntaId3","RepuestaId3"]
}
}

/**
  Set Preguntas Secretas Usuario Aplicacion Movil Response.
*/
@objc(SetPreguntasSecretasUsuarioAplicacionMovilResponse)
public class SetPreguntasSecretasUsuarioAplicacionMovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Usuarioporcuenta.
*/
@objc(GetUsuarioporcuenta)
public class GetUsuarioporcuenta : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Cuenta
var cpCuenta: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Cuenta"]
}
}

/**
  Get Usuarioporcuenta Response.
*/
@objc(GetUsuarioporcuentaResponse)
public class GetUsuarioporcuentaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Usuario.
*/
@objc(RespuestaUsuario)
public class RespuestaUsuario : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Get Tipos Empresa.
*/
@objc(GetTiposEmpresa)
public class GetTiposEmpresa : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Tipos Empresa Response.
*/
@objc(GetTiposEmpresaResponse)
public class GetTiposEmpresaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Tipo Empresa.
*/
@objc(RespuestaListadoTipoEmpresa)
public class RespuestaListadoTipoEmpresa : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Get Usuarioporemail.
*/
@objc(GetUsuarioporemail)
public class GetUsuarioporemail : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Email"]
}
}

/**
  Get Usuarioporemail Response.
*/
@objc(GetUsuarioporemailResponse)
public class GetUsuarioporemailResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Recuperar Credencial.
*/
@objc(RecuperarCredencial)
public class RecuperarCredencial : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Idioma
var cpIdioma: String?

/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Idioma","Email"]
}
}

/**
  Recuperar Credencial Response.
*/
@objc(RecuperarCredencialResponse)
public class RecuperarCredencialResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Preguntas Secretas.
*/
@objc(GetPreguntasSecretas)
public class GetPreguntasSecretas : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Id Idioma
var cpIdIdioma: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","IdIdioma"]
}
}

/**
  Get Preguntas Secretas Response.
*/
@objc(GetPreguntasSecretasResponse)
public class GetPreguntasSecretasResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Preguntas Secretas.
*/
@objc(RespuestaPreguntasSecretas)
public class RespuestaPreguntasSecretas : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Pregunta Idioma.
*/
@objc(PreguntaIdioma)
public class PreguntaIdioma : SyedAbsarObjectBase {


/// Pregunta Idioma Id
var cpPreguntaIdiomaId: Int?

/// Pregunta
var cpPregunta: String?

/// Pregunta Id
var cpPreguntaId: Int?

override static func cpKeys() -> Array<String> {
return ["PreguntaIdiomaId","Pregunta","PreguntaId"]
}
}

/**
  Desbloquear Usuario.
*/
@objc(DesbloquearUsuario)
public class DesbloquearUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Preguntas Secretas Enviadas
var cpPreguntasSecretasEnviadas: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","PreguntasSecretasEnviadas"]
}
}

/**
  Pregunta Secreta.
*/
@objc(PreguntaSecreta)
public class PreguntaSecreta : SyedAbsarObjectBase {


/// Pregunta Secreta Id
var cpPreguntaSecretaId: Int?

/// Pregunta Id
var cpPreguntaId: Int?

/// Respuesta
var cpRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["PreguntaSecretaId","PreguntaId","Respuesta"]
}
}

/**
  Desbloquear Usuario Response.
*/
@objc(DesbloquearUsuarioResponse)
public class DesbloquearUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Cambiar Credencial Por Correo.
*/
@objc(CambiarCredencialPorCorreo)
public class CambiarCredencialPorCorreo : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Email
var cpEmail: String?

/// Credencial
var cpCredencial: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Email","Credencial"]
}
}

/**
  Cambiar Credencial Por Correo Response.
*/
@objc(CambiarCredencialPorCorreoResponse)
public class CambiarCredencialPorCorreoResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Estados Usuario.
*/
@objc(GetEstadosUsuario)
public class GetEstadosUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Estados Usuario Response.
*/
@objc(GetEstadosUsuarioResponse)
public class GetEstadosUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Estados.
*/
@objc(RespuestaListadoEstados)
public class RespuestaListadoEstados : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Get Estado Token.
*/
@objc(GetEstadoToken)
public class GetEstadoToken : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Token
var cpToken: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Token"]
}
}

/**
  Get Estado Token Response.
*/
@objc(GetEstadoTokenResponse)
public class GetEstadoTokenResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Token.
*/
@objc(RespuestaToken)
public class RespuestaToken : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: Bool?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Get Tipo Cuentas Bancarias.
*/
@objc(GetTipoCuentasBancarias)
public class GetTipoCuentasBancarias : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Tipo Cuentas Bancarias Response.
*/
@objc(GetTipoCuentasBancariasResponse)
public class GetTipoCuentasBancariasResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Tipo Cuenta Bancaria.
*/
@objc(RespuestaListadoTipoCuentaBancaria)
public class RespuestaListadoTipoCuentaBancaria : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Cambiar Credencial Aplicacion Movil Email Or Phone.
*/
@objc(CambiarCredencialAplicacionMovilEmailOrPhone)
public class CambiarCredencialAplicacionMovilEmailOrPhone : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Phone Or Email
var cpPhoneOrEmail: String?

/// Credencial
var cpCredencial: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","PhoneOrEmail","Credencial"]
}
}

/**
  Cambiar Credencial Aplicacion Movil Email Or Phone Response.
*/
@objc(CambiarCredencialAplicacionMovilEmailOrPhoneResponse)
public class CambiarCredencialAplicacionMovilEmailOrPhoneResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Tipos Documento.
*/
@objc(GetTiposDocumento)
public class GetTiposDocumento : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Tipos Documento Response.
*/
@objc(GetTiposDocumentoResponse)
public class GetTiposDocumentoResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Tipo Documento.
*/
@objc(RespuestaListadoTipoDocumento)
public class RespuestaListadoTipoDocumento : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Guardar Usuario.
*/
@objc(GuardarUsuario)
public class GuardarUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Nombre
var cpNombre: String?

/// Apellido
var cpApellido: String?

/// Credencial
var cpCredencial: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Fecha Nacimiento
var cpFechaNacimiento: String?

/// Direccion
var cpDireccion: String?

/// Pais Id
var cpPaisId: String?

/// Estado Id
var cpEstadoId: String?

/// Ciudad Id
var cpCiudadId: String?

/// Condado Id
var cpCondadoId: String?

/// Codigo Postal
var cpCodigoPostal: String?

/// Codigo Validacion Movil
var cpCodigoValidacionMovil: String?

/// Nombre Imagen
var cpNombreImagen: String?

/// Imagen Bytes
var cpImagenBytes: String?

/// Link
var cpLink: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Nombre","Apellido","Credencial","Email","Movil","FechaNacimiento","Direccion","PaisId","EstadoId","CiudadId","CondadoId","CodigoPostal","CodigoValidacionMovil","NombreImagen","ImagenBytes","Link"]
}
}

/**
  Guardar Usuario Response.
*/
@objc(GuardarUsuarioResponse)
public class GuardarUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Validar Pin.
*/
@objc(ValidarPin)
public class ValidarPin : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Pin
var cpPin: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Pin"]
}
}

/**
  Validar Pin Response.
*/
@objc(ValidarPinResponse)
public class ValidarPinResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Login.
*/
@objc(Login)
public class Login : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Credencial
var cpCredencial: String?

/// Ip
var cpIp: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Email","Movil","Credencial","Ip"]
}
}

/**
  Login Response.
*/
@objc(LoginResponse)
public class LoginResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Nuevo Token.
*/
@objc(RespuestaNuevoToken)
public class RespuestaNuevoToken : SyedAbsarObjectBase {


/// Token
var cpToken: String?

override static func cpKeys() -> Array<String> {
return ["Token"]
}
}

/**
  Guardar Agente Comercial.
*/
@objc(GuardarAgenteComercial)
public class GuardarAgenteComercial : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Usuario Empresa Id
var cpUsuarioEmpresaId: String?

/// Nombre
var cpNombre: String?

/// Apellido
var cpApellido: String?

/// Credencial
var cpCredencial: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Fecha Nacimiento
var cpFechaNacimiento: String?

/// Direccion
var cpDireccion: String?

/// Pais Id
var cpPaisId: String?

/// Estado Id
var cpEstadoId: String?

/// Ciudad Id
var cpCiudadId: String?

/// Condado Id
var cpCondadoId: String?

/// Codigo Postal
var cpCodigoPostal: String?

/// Link
var cpLink: String?

/// Fecha Vencimiento Documento
var cpFechaVencimientoDocumento: String?

/// Estado
var cpEstado: String?

/// Tipo Documento
var cpTipoDocumento: String?

/// Numero Documento
var cpNumeroDocumento: String?

/// Numero Identificacion
var cpNumeroIdentificacion: String?

/// Telefono
var cpTelefono: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","UsuarioEmpresaId","Nombre","Apellido","Credencial","Email","Movil","FechaNacimiento","Direccion","PaisId","EstadoId","CiudadId","CondadoId","CodigoPostal","Link","FechaVencimientoDocumento","Estado","TipoDocumento","NumeroDocumento","NumeroIdentificacion","Telefono"]
}
}

/**
  Guardar Agente Comercial Response.
*/
@objc(GuardarAgenteComercialResponse)
public class GuardarAgenteComercialResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Test Des Ecnript.
*/
@objc(TestDesEcnript)
public class TestDesEcnript : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Text Value
var cpTextValue: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","TextValue"]
}
}

/**
  Test Des Ecnript Response.
*/
@objc(TestDesEcnriptResponse)
public class TestDesEcnriptResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Preguntas Secretas Usuario.
*/
@objc(GetPreguntasSecretasUsuario)
public class GetPreguntasSecretasUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId"]
}
}

/**
  Get Preguntas Secretas Usuario Response.
*/
@objc(GetPreguntasSecretasUsuarioResponse)
public class GetPreguntasSecretasUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Preguntas Secretas Usuario.
*/
@objc(RespuestaPreguntasSecretasUsuario)
public class RespuestaPreguntasSecretasUsuario : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Get Bancos Disponibles.
*/
@objc(GetBancosDisponibles)
public class GetBancosDisponibles : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Bancos Disponibles Response.
*/
@objc(GetBancosDisponiblesResponse)
public class GetBancosDisponiblesResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Bancos.
*/
@objc(RespuestaListadoBancos)
public class RespuestaListadoBancos : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Listado Productos Por Usuario.
*/
@objc(ListadoProductosPorUsuario)
public class ListadoProductosPorUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId"]
}
}

/**
  Listado Productos Por Usuario Response.
*/
@objc(ListadoProductosPorUsuarioResponse)
public class ListadoProductosPorUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Login Social Network.
*/
@objc(LoginSocialNetwork)
public class LoginSocialNetwork : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Ip
var cpIp: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Email","Movil","Ip"]
}
}

/**
  Login Social Network Response.
*/
@objc(LoginSocialNetworkResponse)
public class LoginSocialNetworkResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Recuperar Password.
*/
@objc(RecuperarPassword)
public class RecuperarPassword : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Idioma
var cpIdioma: String?

/// Email
var cpEmail: String?

/// Cliente
var cpCliente: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Idioma","Email","Cliente"]
}
}

/**
  Recuperar Password Response.
*/
@objc(RecuperarPasswordResponse)
public class RecuperarPasswordResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Guardar Direccion Confianza.
*/
@objc(GuardarDireccionConfianza)
public class GuardarDireccionConfianza : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Ip
var cpIp: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Ip"]
}
}

/**
  Guardar Direccion Confianza Response.
*/
@objc(GuardarDireccionConfianzaResponse)
public class GuardarDireccionConfianzaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Guardar Direccion Confianza.
*/
@objc(RespuestaGuardarDireccionConfianza)
public class RespuestaGuardarDireccionConfianza : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Cambiar Credencial.
*/
@objc(CambiarCredencial)
public class CambiarCredencial : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Credencial
var cpCredencial: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Credencial"]
}
}

/**
  Cambiar Credencial Response.
*/
@objc(CambiarCredencialResponse)
public class CambiarCredencialResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Activar Usuario Por Correo.
*/
@objc(ActivarUsuarioPorCorreo)
public class ActivarUsuarioPorCorreo : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId"]
}
}

/**
  Activar Usuario Por Correo Response.
*/
@objc(ActivarUsuarioPorCorreoResponse)
public class ActivarUsuarioPorCorreoResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Usuariopor Aplicacion.
*/
@objc(GetUsuarioporAplicacion)
public class GetUsuarioporAplicacion : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Aplicacion Id
var cpAplicacionId: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","AplicacionId"]
}
}

/**
  Get Usuariopor Aplicacion Response.
*/
@objc(GetUsuarioporAplicacionResponse)
public class GetUsuarioporAplicacionResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Send Sms Test.
*/
@objc(SendSmsTest)
public class SendSmsTest : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Send Sms Test Response.
*/
@objc(SendSmsTestResponse)
public class SendSmsTestResponse : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Guardar Perfil Alo Benefit.
*/
@objc(GuardarPerfilAloBenefit)
public class GuardarPerfilAloBenefit : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId"]
}
}

/**
  Guardar Perfil Alo Benefit Response.
*/
@objc(GuardarPerfilAloBenefitResponse)
public class GuardarPerfilAloBenefitResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Guardar Perfil Alo Pos.
*/
@objc(GuardarPerfilAloPos)
public class GuardarPerfilAloPos : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Genero
var cpGenero: String?

/// Telefono Residencial
var cpTelefonoResidencial: String?

/// Ocupacion Id
var cpOcupacionId: Int?

/// Tipo Documento Id
var cpTipoDocumentoId: String?

/// Numero Documento
var cpNumeroDocumento: String?

/// Nombre Empresa
var cpNombreEmpresa: String?

/// Email Empresa
var cpEmailEmpresa: String?

/// Tipo Empresa Id
var cpTipoEmpresaId: Int?

/// Ein Empresa
var cpEinEmpresa: String?

/// Tipo Persona
var cpTipoPersona: String?

/// Fechavencimiento Documento
var cpFechavencimientoDocumento: String?

/// Telefono Empresa
var cpTelefonoEmpresa: String?

/// Ingresos Estimados Empresa
var cpIngresosEstimadosEmpresa: String?

/// Direccion Empresa
var cpDireccionEmpresa: String?

/// Pais Empresa Id
var cpPaisEmpresaId: Int?

/// Estado Empresa Id
var cpEstadoEmpresaId: Int?

/// Ciudad Empresa Id
var cpCiudadEmpresaId: Int?

/// Codigo Postal Empresa
var cpCodigoPostalEmpresa: String?

/// Tipo Cuenta Bancaria Id
var cpTipoCuentaBancariaId: Int?

/// Numero Ruta Bancaria
var cpNumeroRutaBancaria: String?

/// Numero Cuenta Bancaria
var cpNumeroCuentaBancaria: String?

/// Banco Id
var cpBancoId: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Genero","TelefonoResidencial","OcupacionId","TipoDocumentoId","NumeroDocumento","NombreEmpresa","EmailEmpresa","TipoEmpresaId","EinEmpresa","TipoPersona","FechavencimientoDocumento","TelefonoEmpresa","IngresosEstimadosEmpresa","DireccionEmpresa","PaisEmpresaId","EstadoEmpresaId","CiudadEmpresaId","CodigoPostalEmpresa","TipoCuentaBancariaId","NumeroRutaBancaria","NumeroCuentaBancaria","BancoId"]
}
}

/**
  Guardar Perfil Alo Pos Response.
*/
@objc(GuardarPerfilAloPosResponse)
public class GuardarPerfilAloPosResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Transferir Alocoins.
*/
@objc(TransferirAlocoins)
public class TransferirAlocoins : SyedAbsarObjectBase {


/// Usuario Id1
var cpUsuarioId1: String?

/// Usuario Id2
var cpUsuarioId2: String?

/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Alocoins
var cpAlocoins: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioId1","UsuarioId2","UsuarioApi","PasswordApi","Alocoins"]
}
}

/**
  Transferir Alocoins Response.
*/
@objc(TransferirAlocoinsResponse)
public class TransferirAlocoinsResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Logintemp.
*/
@objc(Logintemp)
public class Logintemp : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Credencial
var cpCredencial: String?

/// Ip
var cpIp: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Email","Movil","Credencial","Ip"]
}
}

/**
  Logintemp Response.
*/
@objc(LogintempResponse)
public class LogintempResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Lexis.
*/
@objc(Lexis)
public class Lexis : SyedAbsarObjectBase {


/// Usuario Id
var cpUsuarioId: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioId"]
}
}

/**
  Lexis Response.
*/
@objc(LexisResponse)
public class LexisResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Afiliar Tarjeta.
*/
@objc(AfiliarTarjeta)
public class AfiliarTarjeta : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Nombre
var cpNombre: String?

/// Numero Tarjeta
var cpNumeroTarjeta: String?

/// Fecha Vencimiento
var cpFechaVencimiento: String?

/// Tipo
var cpTipo: String?

/// Cvv
var cpCvv: String?

/// Pais Id
var cpPaisId: String?

/// Estado Id
var cpEstadoId: String?

/// Ciudad Id
var cpCiudadId: String?

/// Condado Id
var cpCondadoId: String?

/// Codigo Postal
var cpCodigoPostal: String?

/// Direccion
var cpDireccion: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Nombre","NumeroTarjeta","FechaVencimiento","Tipo","Cvv","PaisId","EstadoId","CiudadId","CondadoId","CodigoPostal","Direccion"]
}
}

/**
  Afiliar Tarjeta Response.
*/
@objc(AfiliarTarjetaResponse)
public class AfiliarTarjetaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Afiliar Cuenta.
*/
@objc(AfiliarCuenta)
public class AfiliarCuenta : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Banco Id
var cpBancoId: String?

/// Cuenta Bancaria Id
var cpCuentaBancariaId: String?

/// Numero Ruta
var cpNumeroRuta: String?

/// Numero Cuenta
var cpNumeroCuenta: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","BancoId","CuentaBancariaId","NumeroRuta","NumeroCuenta"]
}
}

/**
  Afiliar Cuenta Response.
*/
@objc(AfiliarCuentaResponse)
public class AfiliarCuentaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Usuarioportarjeta.
*/
@objc(GetUsuarioportarjeta)
public class GetUsuarioportarjeta : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Tarjeta
var cpTarjeta: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Tarjeta"]
}
}

/**
  Get Usuarioportarjeta Response.
*/
@objc(GetUsuarioportarjetaResponse)
public class GetUsuarioportarjetaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Send Sms Simbox.
*/
@objc(RU_SendSmsSimbox)
public class RU_SendSmsSimbox : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Number
var cpNumber: String?

/// Text
var cpText: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Number","Text"]
}
}

/**
  Send Sms Simbox Response.
*/
@objc(RU_SendSmsSimboxResponse)
public class RU_SendSmsSimboxResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Validar Existe Numero.
*/
@objc(ValidarExisteNumero)
public class ValidarExisteNumero : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Movil
var cpMovil: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Movil"]
}
}

/**
  Validar Existe Numero Response.
*/
@objc(ValidarExisteNumeroResponse)
public class ValidarExisteNumeroResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Activar Tarjeta.
*/
@objc(ActivarTarjeta)
public class ActivarTarjeta : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Pin
var cpPin: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Pin"]
}
}

/**
  Activar Tarjeta Response.
*/
@objc(ActivarTarjetaResponse)
public class ActivarTarjetaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Test Ecnript.
*/
@objc(TestEcnript)
public class TestEcnript : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Text Value
var cpTextValue: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","TextValue"]
}
}

/**
  Test Ecnript Response.
*/
@objc(TestEcnriptResponse)
public class TestEcnriptResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Compra Alocoins.
*/
@objc(CompraAlocoins)
public class CompraAlocoins : SyedAbsarObjectBase {


/// Usuario Id
var cpUsuarioId: String?

/// Cantidad
var cpCantidad: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioId","Cantidad"]
}
}

/**
  Compra Alocoins Response.
*/
@objc(CompraAlocoinsResponse)
public class CompraAlocoinsResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Guardar Bitacora.
*/
@objc(GuardarBitacora)
public class GuardarBitacora : SyedAbsarObjectBase {


/// Usuario Id
var cpUsuarioId: Int?

/// Ip
var cpIp: String?

/// Accion
var cpAccion: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioId","Ip","Accion"]
}
}

/**
  Guardar Bitacora Response.
*/
@objc(GuardarBitacoraResponse)
public class GuardarBitacoraResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Guardar Usuario Aplicacion Movil.
*/
@objc(GuardarUsuarioAplicacionMovil)
public class GuardarUsuarioAplicacionMovil : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Nombre
var cpNombre: String?

/// Apellido
var cpApellido: String?

/// Credencial
var cpCredencial: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Fecha Nacimiento
var cpFechaNacimiento: String?

/// Direccion
var cpDireccion: String?

/// Pais Id
var cpPaisId: String?

/// Estado Id
var cpEstadoId: String?

/// Ciudad Id
var cpCiudadId: String?

/// Condado Id
var cpCondadoId: String?

/// Codigo Postal
var cpCodigoPostal: String?

/// Codigo Validacion Movil
var cpCodigoValidacionMovil: String?

/// Nombre Imagen
var cpNombreImagen: String?

/// Imagen Bytes
var cpImagenBytes: String?

/// Link
var cpLink: String?

/// Pin
var cpPin: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Nombre","Apellido","Credencial","Email","Movil","FechaNacimiento","Direccion","PaisId","EstadoId","CiudadId","CondadoId","CodigoPostal","CodigoValidacionMovil","NombreImagen","ImagenBytes","Link","Pin"]
}
}

/**
  Guardar Usuario Aplicacion Movil Response.
*/
@objc(GuardarUsuarioAplicacionMovilResponse)
public class GuardarUsuarioAplicacionMovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Tarjetas Disponibles.
*/
@objc(GetTarjetasDisponibles)
public class GetTarjetasDisponibles : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Tarjetas Disponibles Response.
*/
@objc(GetTarjetasDisponiblesResponse)
public class GetTarjetasDisponiblesResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Tarjetas.
*/
@objc(RespuestaListadoTarjetas)
public class RespuestaListadoTarjetas : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Generar Codigo Movil S M S Aplicacion Movil.
*/
@objc(GenerarCodigoMovilSMSAplicacionMovil)
public class GenerarCodigoMovilSMSAplicacionMovil : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Movil
var cpMovil: String?

/// Email
var cpEmail: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Movil","Email"]
}
}

/**
  Generar Codigo Movil S M S Aplicacion Movil Response.
*/
@objc(GenerarCodigoMovilSMSAplicacionMovilResponse)
public class GenerarCodigoMovilSMSAplicacionMovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Codigo Random.
*/
@objc(RespuestaCodigoRandom)
public class RespuestaCodigoRandom : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Guardar Usuario Social Network.
*/
@objc(GuardarUsuarioSocialNetwork)
public class GuardarUsuarioSocialNetwork : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Nombre
var cpNombre: String?

/// Apellido
var cpApellido: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Codigo Validacion Movil
var cpCodigoValidacionMovil: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Nombre","Apellido","Email","Movil","CodigoValidacionMovil"]
}
}

/**
  Guardar Usuario Social Network Response.
*/
@objc(GuardarUsuarioSocialNetworkResponse)
public class GuardarUsuarioSocialNetworkResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Cambiar Credencial Aplicacion Movil.
*/
@objc(CambiarCredencialAplicacionMovil)
public class CambiarCredencialAplicacionMovil : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Credencial
var cpCredencial: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","Credencial"]
}
}

/**
  Cambiar Credencial Aplicacion Movil Response.
*/
@objc(CambiarCredencialAplicacionMovilResponse)
public class CambiarCredencialAplicacionMovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Lista Empresa Por Pos Tipo Persona.
*/
@objc(GetListaEmpresaPorPosTipoPersona)
public class GetListaEmpresaPorPosTipoPersona : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Descripcion
var cpDescripcion: String?

/// Tipo Persona
var cpTipoPersona: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Descripcion","TipoPersona"]
}
}

/**
  Get Lista Empresa Por Pos Tipo Persona Response.
*/
@objc(GetListaEmpresaPorPosTipoPersonaResponse)
public class GetListaEmpresaPorPosTipoPersonaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Empresa.
*/
@objc(RespuestaListadoEmpresa)
public class RespuestaListadoEmpresa : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}

/**
  Get Usuariopormovil.
*/
@objc(GetUsuariopormovil)
public class GetUsuariopormovil : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Movil
var cpMovil: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Movil"]
}
}

/**
  Get Usuariopormovil Response.
*/
@objc(GetUsuariopormovilResponse)
public class GetUsuariopormovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Usuariopor Id.
*/
@objc(GetUsuarioporId)
public class GetUsuarioporId : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId"]
}
}

/**
  Get Usuariopor Id Response.
*/
@objc(GetUsuarioporIdResponse)
public class GetUsuarioporIdResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Set Preguntas Secretas Usuario.
*/
@objc(SetPreguntasSecretasUsuario)
public class SetPreguntasSecretasUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Preguntas Secretas
var cpPreguntasSecretas: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","PreguntasSecretas"]
}
}

/**
  Set Preguntas Secretas Usuario Response.
*/
@objc(SetPreguntasSecretasUsuarioResponse)
public class SetPreguntasSecretasUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Activar Usuario.
*/
@objc(ActivarUsuario)
public class ActivarUsuario : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Token
var cpToken: Int?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Token"]
}
}

/**
  Activar Usuario Response.
*/
@objc(ActivarUsuarioResponse)
public class ActivarUsuarioResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Guardar Perfil Alo Esp.
*/
@objc(GuardarPerfilAloEsp)
public class GuardarPerfilAloEsp : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: Int?

/// Tipo Cuenta
var cpTipoCuenta: String?

/// Nombre Tienda
var cpNombreTienda: String?

/// Monto Maximo
var cpMontoMaximo: String?

/// Ein Tienda
var cpEinTienda: String?

/// Tax Tienda
var cpTaxTienda: String?

/// Razon Social
var cpRazonSocial: String?

/// Telefono Establecimiento
var cpTelefonoEstablecimiento: String?

/// Idioma Envio
var cpIdiomaEnvio: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","TipoCuenta","NombreTienda","MontoMaximo","EinTienda","TaxTienda","RazonSocial","TelefonoEstablecimiento","IdiomaEnvio"]
}
}

/**
  Guardar Perfil Alo Esp Response.
*/
@objc(GuardarPerfilAloEspResponse)
public class GuardarPerfilAloEspResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Login Aplicacion Movil.
*/
@objc(LoginAplicacionMovil)
public class LoginAplicacionMovil : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Email
var cpEmail: String?

/// Movil
var cpMovil: String?

/// Credencial
var cpCredencial: String?

/// Ip
var cpIp: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Email","Movil","Credencial","Ip"]
}
}

/**
  Login Aplicacion Movil Response.
*/
@objc(LoginAplicacionMovilResponse)
public class LoginAplicacionMovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Solicitar Tarjeta.
*/
@objc(SolicitarTarjeta)
public class SolicitarTarjeta : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Usuario Id
var cpUsuarioId: String?

/// Email Contacto
var cpEmailContacto: String?

/// Direccion Contacto
var cpDireccionContacto: String?

/// Telefono Contacto
var cpTelefonoContacto: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","UsuarioId","EmailContacto","DireccionContacto","TelefonoContacto"]
}
}

/**
  Solicitar Tarjeta Response.
*/
@objc(SolicitarTarjetaResponse)
public class SolicitarTarjetaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Usuarios.
*/
@objc(GetUsuarios)
public class GetUsuarios : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Usuarios Response.
*/
@objc(GetUsuariosResponse)
public class GetUsuariosResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Usuarios.
*/
@objc(RespuestaListadoUsuarios)
public class RespuestaListadoUsuarios : SyedAbsarObjectBase {


/// Usuarios
var cpUsuarios: String?

override static func cpKeys() -> Array<String> {
return ["Usuarios"]
}
}

/**
  Generar Codigo Movil S M S.
*/
@objc(RU_GenerarCodigoMovilSMS)
public class RU_GenerarCodigoMovilSMS : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Movil
var cpMovil: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Movil"]
}
}

/**
  Generar Codigo Movil S M S Response.
*/
@objc(RU_GenerarCodigoMovilSMSResponse)
public class RU_GenerarCodigoMovilSMSResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Send Mail Test.
*/
@objc(SendMailTest)
public class SendMailTest : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Send Mail Test Response.
*/
@objc(RU_SendMailTestResponse)
public class RU_SendMailTestResponse : SyedAbsarObjectBase {


override static func cpKeys() -> Array<String> {
return []
}
}

/**
  Logout.
*/
@objc(Logout)
public class Logout : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Token
var cpToken: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","Token"]
}
}

/**
  Logout Response.
*/
@objc(LogoutResponse)
public class LogoutResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Agentes Comerciales Por Empresa.
*/
@objc(GetAgentesComercialesPorEmpresa)
public class GetAgentesComercialesPorEmpresa : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

/// Empresa Id
var cpEmpresaId: String?

/// Tipo Persona
var cpTipoPersona: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi","EmpresaId","TipoPersona"]
}
}

/**
  Get Agentes Comerciales Por Empresa Response.
*/
@objc(GetAgentesComercialesPorEmpresaResponse)
public class GetAgentesComercialesPorEmpresaResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Generar Codigo Movil.
*/
@objc(GenerarCodigoMovil)
public class GenerarCodigoMovil : SyedAbsarObjectBase {


/// Movil
var cpMovil: String?

override static func cpKeys() -> Array<String> {
return ["Movil"]
}
}

/**
  Generar Codigo Movil Response.
*/
@objc(GenerarCodigoMovilResponse)
public class GenerarCodigoMovilResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Get Ocupaciones.
*/
@objc(GetOcupaciones)
public class GetOcupaciones : SyedAbsarObjectBase {


/// Usuario Api
var cpUsuarioApi: String?

/// Password Api
var cpPasswordApi: String?

override static func cpKeys() -> Array<String> {
return ["UsuarioApi","PasswordApi"]
}
}

/**
  Get Ocupaciones Response.
*/
@objc(GetOcupacionesResponse)
public class GetOcupacionesResponse : SyedAbsarObjectBase {


/// Return
var cpReturn: String?

override static func cpKeys() -> Array<String> {
return ["Return"]
}
}

/**
  Respuesta Listado Ocupaciones.
*/
@objc(RespuestaListadoOcupaciones)
public class RespuestaListadoOcupaciones : SyedAbsarObjectBase {


/// Datos Respuesta
var cpDatosRespuesta: String?

override static func cpKeys() -> Array<String> {
return ["DatosRespuesta"]
}
}


