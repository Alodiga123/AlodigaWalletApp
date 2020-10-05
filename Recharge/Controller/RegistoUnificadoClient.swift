//
//  RegistoUnificadoClient.swift
//  webServices
//
//  Created by Adira Quintero on 10/5/20.
//  Copyright © 2020 Adira Quintero. All rights reserved.
//

import Foundation
public class RegistoUnificadoClient{
    
    /**
        Calls the SOAP Operation: Login with Message based on Login Object.

        - parameter login:  Login Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opLogin(login : Login , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:login><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><email>%@</email><movil>%@</movil><credencial>%@</credencial><ip>%@</ip></ns1:login></SOAP-ENV:Body></SOAP-ENV:Envelope>",login.cpUsuarioApi!,login.cpPasswordApi!,login.cpEmail!,login.cpMovil!,login.cpCredencial!,login.cpIp!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LoginResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetAplicaciones with Message based on GetAplicaciones Object.

        - parameter getAplicaciones:  GetAplicaciones Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetAplicaciones(getAplicaciones : GetAplicaciones , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getAplicaciones><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getAplicaciones></SOAP-ENV:Body></SOAP-ENV:Envelope>",getAplicaciones.cpUsuarioApi!,getAplicaciones.cpPasswordApi!)

        self.makeSoapConnection(soapLocation: "http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService",soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetAplicacionesResponse", completionHandler: {(syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetOcupaciones with Message based on GetOcupaciones Object.

        - parameter getOcupaciones:  GetOcupaciones Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetOcupaciones(getOcupaciones : GetOcupaciones , completionHandler: @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getOcupaciones><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getOcupaciones></SOAP-ENV:Body></SOAP-ENV:Envelope>",getOcupaciones.cpUsuarioApi!,getOcupaciones.cpPasswordApi!)

        self.makeSoapConnection(soapLocation: "http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetOcupacionesResponse",  completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetTiposDocumento with Message based on GetTiposDocumento Object.

        - parameter getTiposDocumento:  GetTiposDocumento Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetTiposDocumento(getTiposDocumento : GetTiposDocumento , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getTiposDocumento><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getTiposDocumento></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTiposDocumento.cpUsuarioApi!,getTiposDocumento.cpPasswordApi!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTiposDocumentoResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: TestEcnript with Message based on TestEcnript Object.

        - parameter testEcnript:  TestEcnript Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opTestEcnript(testEcnript : TestEcnript , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:testEcnript><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><textValue>%@</textValue></ns1:testEcnript></SOAP-ENV:Body></SOAP-ENV:Envelope>",testEcnript.cpUsuarioApi!,testEcnript.cpPasswordApi!,testEcnript.cpTextValue!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"TestEcnriptResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: TestDesEcnript with Message based on TestDesEcnript Object.

        - parameter testDesEcnript:  TestDesEcnript Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opTestDesEcnript(testDesEcnript : TestDesEcnript , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:testDesEcnript><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><textValue>%@</textValue></ns1:testDesEcnript></SOAP-ENV:Body></SOAP-ENV:Envelope>",testDesEcnript.cpUsuarioApi!,testDesEcnript.cpPasswordApi!,testDesEcnript.cpTextValue!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"TestDesEcnriptResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: SendMailTest with Message based on SendMailTest Object.

        - parameter sendMailTest:  SendMailTest Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opSendMailTest(sendMailTest : SendMailTest , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:sendMailTest/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendMailTestResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetTiposEmpresa with Message based on GetTiposEmpresa Object.

        - parameter getTiposEmpresa:  GetTiposEmpresa Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetTiposEmpresa(getTiposEmpresa : GetTiposEmpresa , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getTiposEmpresa><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getTiposEmpresa></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTiposEmpresa.cpUsuarioApi!,getTiposEmpresa.cpPasswordApi!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTiposEmpresaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetListaEmpresaPorPosTipoPersona with Message based on GetListaEmpresaPorPosTipoPersona Object.

        - parameter getListaEmpresaPorPosTipoPersona:  GetListaEmpresaPorPosTipoPersona Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetListaEmpresaPorPosTipoPersona(getListaEmpresaPorPosTipoPersona : GetListaEmpresaPorPosTipoPersona , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getListaEmpresaPorPosTipoPersona><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><descripcion>%@</descripcion><tipoPersona>%@</tipoPersona></ns1:getListaEmpresaPorPosTipoPersona></SOAP-ENV:Body></SOAP-ENV:Envelope>",getListaEmpresaPorPosTipoPersona.cpUsuarioApi!,getListaEmpresaPorPosTipoPersona.cpPasswordApi!,getListaEmpresaPorPosTipoPersona.cpDescripcion!,getListaEmpresaPorPosTipoPersona.cpTipoPersona!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetListaEmpresaPorPosTipoPersonaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarUsuario with Message based on GuardarUsuario Object.

        - parameter guardarUsuario:  GuardarUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarUsuario(guardarUsuario : GuardarUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarUsuario><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><nombre>%@</nombre><apellido>%@</apellido><credencial>%@</credencial><email>%@</email><movil>%@</movil><fechaNacimiento>%@</fechaNacimiento><direccion>%@</direccion><paisId>%@</paisId><estadoId>%@</estadoId><ciudadId>%@</ciudadId><condadoId>%@</condadoId><codigoPostal>%@</codigoPostal><codigoValidacionMovil>%@</codigoValidacionMovil><nombreImagen>%@</nombreImagen><imagenBytes>JUA=</imagenBytes><link>%@</link></ns1:guardarUsuario></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarUsuario.cpUsuarioApi!,guardarUsuario.cpPasswordApi!,guardarUsuario.cpUsuarioId!,guardarUsuario.cpNombre!,guardarUsuario.cpApellido!,guardarUsuario.cpCredencial!,guardarUsuario.cpEmail!,guardarUsuario.cpMovil!,guardarUsuario.cpFechaNacimiento!,guardarUsuario.cpDireccion!,guardarUsuario.cpPaisId!,guardarUsuario.cpEstadoId!,guardarUsuario.cpCiudadId!,guardarUsuario.cpCondadoId!,guardarUsuario.cpCodigoPostal!,guardarUsuario.cpCodigoValidacionMovil!,guardarUsuario.cpNombreImagen!,guardarUsuario.cpImagenBytes!,guardarUsuario.cpLink!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarUsuarioAplicacionMovil with Message based on GuardarUsuarioAplicacionMovil Object.

        - parameter guardarUsuarioAplicacionMovil:  GuardarUsuarioAplicacionMovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarUsuarioAplicacionMovil(guardarUsuarioAplicacionMovil : GuardarUsuarioAplicacionMovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarUsuarioAplicacionMovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><nombre>%@</nombre><apellido>%@</apellido><credencial>%@</credencial><email>%@</email><movil>%@</movil><fechaNacimiento>%@</fechaNacimiento><direccion>%@</direccion><paisId>%@</paisId><estadoId>%@</estadoId><ciudadId>%@</ciudadId><condadoId>%@</condadoId><codigoPostal>%@</codigoPostal><codigoValidacionMovil>%@</codigoValidacionMovil><nombreImagen>%@</nombreImagen><imagenBytes>JUA=</imagenBytes><link>%@</link><pin>%@</pin></ns1:guardarUsuarioAplicacionMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarUsuarioAplicacionMovil.cpUsuarioApi!,guardarUsuarioAplicacionMovil.cpPasswordApi!,guardarUsuarioAplicacionMovil.cpUsuarioId!,guardarUsuarioAplicacionMovil.cpNombre!,guardarUsuarioAplicacionMovil.cpApellido!,guardarUsuarioAplicacionMovil.cpCredencial!,guardarUsuarioAplicacionMovil.cpEmail!,guardarUsuarioAplicacionMovil.cpMovil!,guardarUsuarioAplicacionMovil.cpFechaNacimiento!,guardarUsuarioAplicacionMovil.cpDireccion!,guardarUsuarioAplicacionMovil.cpPaisId!,guardarUsuarioAplicacionMovil.cpEstadoId!,guardarUsuarioAplicacionMovil.cpCiudadId!,guardarUsuarioAplicacionMovil.cpCondadoId!,guardarUsuarioAplicacionMovil.cpCodigoPostal!,guardarUsuarioAplicacionMovil.cpCodigoValidacionMovil!,guardarUsuarioAplicacionMovil.cpNombreImagen!,guardarUsuarioAplicacionMovil.cpImagenBytes!,guardarUsuarioAplicacionMovil.cpLink!,guardarUsuarioAplicacionMovil.cpPin!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarUsuarioAplicacionMovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarDireccionConfianza with Message based on GuardarDireccionConfianza Object.

        - parameter guardarDireccionConfianza:  GuardarDireccionConfianza Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarDireccionConfianza(guardarDireccionConfianza : GuardarDireccionConfianza , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarDireccionConfianza><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><ip>%@</ip></ns1:guardarDireccionConfianza></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarDireccionConfianza.cpUsuarioApi!,guardarDireccionConfianza.cpPasswordApi!,guardarDireccionConfianza.cpUsuarioId!,guardarDireccionConfianza.cpIp!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarDireccionConfianzaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetPreguntasSecretasUsuario with Message based on GetPreguntasSecretasUsuario Object.

        - parameter getPreguntasSecretasUsuario:  GetPreguntasSecretasUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetPreguntasSecretasUsuario(getPreguntasSecretasUsuario : GetPreguntasSecretasUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getPreguntasSecretasUsuario><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId></ns1:getPreguntasSecretasUsuario></SOAP-ENV:Body></SOAP-ENV:Envelope>",getPreguntasSecretasUsuario.cpUsuarioApi!,getPreguntasSecretasUsuario.cpPasswordApi!,getPreguntasSecretasUsuario.cpUsuarioId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetPreguntasSecretasUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuarioporemail with Message based on GetUsuarioporemail Object.

        - parameter getUsuarioporemail:  GetUsuarioporemail Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuarioporemail(getUsuarioporemail : GetUsuarioporemail , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuarioporemail><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><email>%@</email></ns1:getUsuarioporemail></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuarioporemail.cpUsuarioApi!,getUsuarioporemail.cpPasswordApi!,getUsuarioporemail.cpEmail!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuarioporemailResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuariopormovil with Message based on GetUsuariopormovil Object.

        - parameter getUsuariopormovil:  GetUsuariopormovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuariopormovil(getUsuariopormovil : GetUsuariopormovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuariopormovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><movil>%@</movil></ns1:getUsuariopormovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuariopormovil.cpUsuarioApi!,getUsuariopormovil.cpPasswordApi!,getUsuariopormovil.cpMovil!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuariopormovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuarioporId with Message based on GetUsuarioporId Object.

        - parameter getUsuarioporId:  GetUsuarioporId Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuarioporId(getUsuarioporId : GetUsuarioporId , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuarioporId><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId></ns1:getUsuarioporId></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuarioporId.cpUsuarioApi!,getUsuarioporId.cpPasswordApi!,getUsuarioporId.cpUsuarioId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuarioporIdResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: CompraAlocoins with Message based on CompraAlocoins Object.

        - parameter compraAlocoins:  CompraAlocoins Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opCompraAlocoins(compraAlocoins : CompraAlocoins , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:compraAlocoins><usuarioId>%@</usuarioId><cantidad>0</cantidad></ns1:compraAlocoins></SOAP-ENV:Body></SOAP-ENV:Envelope>",compraAlocoins.cpUsuarioId!,compraAlocoins.cpCantidad!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CompraAlocoinsResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: ActivarUsuarioPorCorreo with Message based on ActivarUsuarioPorCorreo Object.

        - parameter activarUsuarioPorCorreo:  ActivarUsuarioPorCorreo Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opActivarUsuarioPorCorreo(activarUsuarioPorCorreo : ActivarUsuarioPorCorreo , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:activarUsuarioPorCorreo><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId></ns1:activarUsuarioPorCorreo></SOAP-ENV:Body></SOAP-ENV:Envelope>",activarUsuarioPorCorreo.cpUsuarioApi!,activarUsuarioPorCorreo.cpPasswordApi!,activarUsuarioPorCorreo.cpUsuarioId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ActivarUsuarioPorCorreoResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: ActivarUsuario with Message based on ActivarUsuario Object.

        - parameter activarUsuario:  ActivarUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opActivarUsuario(activarUsuario : ActivarUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:activarUsuario><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><token>0</token></ns1:activarUsuario></SOAP-ENV:Body></SOAP-ENV:Envelope>",activarUsuario.cpUsuarioApi!,activarUsuario.cpPasswordApi!,activarUsuario.cpToken!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ActivarUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuarios with Message based on GetUsuarios Object.

        - parameter getUsuarios:  GetUsuarios Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuarios(getUsuarios : GetUsuarios , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuarios><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getUsuarios></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuarios.cpUsuarioApi!,getUsuarios.cpPasswordApi!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuariosResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarPerfilAloPos with Message based on GuardarPerfilAloPos Object.

        - parameter guardarPerfilAloPos:  GuardarPerfilAloPos Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarPerfilAloPos(guardarPerfilAloPos : GuardarPerfilAloPos , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarPerfilAloPos><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><genero>%@</genero><telefonoResidencial>%@</telefonoResidencial><ocupacionId>0</ocupacionId><tipoDocumentoId>%@</tipoDocumentoId><numeroDocumento>%@</numeroDocumento><nombreEmpresa>%@</nombreEmpresa><emailEmpresa>%@</emailEmpresa><tipoEmpresaId>0</tipoEmpresaId><einEmpresa>%@</einEmpresa><tipoPersona>%@</tipoPersona><fechavencimientoDocumento>%@</fechavencimientoDocumento><telefonoEmpresa>%@</telefonoEmpresa><ingresosEstimadosEmpresa>%@</ingresosEstimadosEmpresa><direccionEmpresa>%@</direccionEmpresa><paisEmpresaId>0</paisEmpresaId><estadoEmpresaId>0</estadoEmpresaId><ciudadEmpresaId>0</ciudadEmpresaId><codigoPostalEmpresa>%@</codigoPostalEmpresa><tipoCuentaBancariaId>0</tipoCuentaBancariaId><numeroRutaBancaria>%@</numeroRutaBancaria><numeroCuentaBancaria>%@</numeroCuentaBancaria><bancoId>0</bancoId></ns1:guardarPerfilAloPos></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarPerfilAloPos.cpUsuarioApi!,guardarPerfilAloPos.cpPasswordApi!,guardarPerfilAloPos.cpUsuarioId!,guardarPerfilAloPos.cpGenero!,guardarPerfilAloPos.cpTelefonoResidencial!,guardarPerfilAloPos.cpOcupacionId!,guardarPerfilAloPos.cpTipoDocumentoId!,guardarPerfilAloPos.cpNumeroDocumento!,guardarPerfilAloPos.cpNombreEmpresa!,guardarPerfilAloPos.cpEmailEmpresa!,guardarPerfilAloPos.cpTipoEmpresaId!,guardarPerfilAloPos.cpEinEmpresa!,guardarPerfilAloPos.cpTipoPersona!,guardarPerfilAloPos.cpFechavencimientoDocumento!,guardarPerfilAloPos.cpTelefonoEmpresa!,guardarPerfilAloPos.cpIngresosEstimadosEmpresa!,guardarPerfilAloPos.cpDireccionEmpresa!,guardarPerfilAloPos.cpPaisEmpresaId!,guardarPerfilAloPos.cpEstadoEmpresaId!,guardarPerfilAloPos.cpCiudadEmpresaId!,guardarPerfilAloPos.cpCodigoPostalEmpresa!,guardarPerfilAloPos.cpTipoCuentaBancariaId!,guardarPerfilAloPos.cpNumeroRutaBancaria!,guardarPerfilAloPos.cpNumeroCuentaBancaria!,guardarPerfilAloPos.cpBancoId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarPerfilAloPosResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuarioporAplicacion with Message based on GetUsuarioporAplicacion Object.

        - parameter getUsuarioporAplicacion:  GetUsuarioporAplicacion Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuarioporAplicacion(getUsuarioporAplicacion : GetUsuarioporAplicacion , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuarioporAplicacion><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><aplicacionId>0</aplicacionId></ns1:getUsuarioporAplicacion></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuarioporAplicacion.cpUsuarioApi!,getUsuarioporAplicacion.cpPasswordApi!,getUsuarioporAplicacion.cpUsuarioId!,getUsuarioporAplicacion.cpAplicacionId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuarioporAplicacionResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarPerfilAloCash with Message based on GuardarPerfilAloCash Object.

        - parameter guardarPerfilAloCash:  GuardarPerfilAloCash Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarPerfilAloCash(guardarPerfilAloCash : GuardarPerfilAloCash , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarPerfilAloCash><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><genero>%@</genero><TelefonoResidencial>%@</TelefonoResidencial><ocupacion>%@</ocupacion><tipoDocumentoId>%@</tipoDocumentoId><numeroDocumento>%@</numeroDocumento></ns1:guardarPerfilAloCash></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarPerfilAloCash.cpUsuarioApi!,guardarPerfilAloCash.cpPasswordApi!,guardarPerfilAloCash.cpUsuarioId!,guardarPerfilAloCash.cpGenero!,guardarPerfilAloCash.cpTelefonoResidencial!,guardarPerfilAloCash.cpOcupacion!,guardarPerfilAloCash.cpTipoDocumentoId!,guardarPerfilAloCash.cpNumeroDocumento!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarPerfilAloCashResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarPerfilAloEsp with Message based on GuardarPerfilAloEsp Object.

        - parameter guardarPerfilAloEsp:  GuardarPerfilAloEsp Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarPerfilAloEsp(guardarPerfilAloEsp : GuardarPerfilAloEsp , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarPerfilAloEsp><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><tipoCuenta>%@</tipoCuenta><nombreTienda>%@</nombreTienda><montoMaximo>0</montoMaximo><einTienda>%@</einTienda><taxTienda>%@</taxTienda><razonSocial>%@</razonSocial><telefonoEstablecimiento>%@</telefonoEstablecimiento><idiomaEnvio>%@</idiomaEnvio></ns1:guardarPerfilAloEsp></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarPerfilAloEsp.cpUsuarioApi!,guardarPerfilAloEsp.cpPasswordApi!,guardarPerfilAloEsp.cpUsuarioId!,guardarPerfilAloEsp.cpTipoCuenta!,guardarPerfilAloEsp.cpNombreTienda!,guardarPerfilAloEsp.cpMontoMaximo!,guardarPerfilAloEsp.cpEinTienda!,guardarPerfilAloEsp.cpTaxTienda!,guardarPerfilAloEsp.cpRazonSocial!,guardarPerfilAloEsp.cpTelefonoEstablecimiento!,guardarPerfilAloEsp.cpIdiomaEnvio!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarPerfilAloEspResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarPerfilAloRRP with Message based on GuardarPerfilAloRRP Object.

        - parameter guardarPerfilAloRRP:  GuardarPerfilAloRRP Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarPerfilAloRRP(guardarPerfilAloRRP : GuardarPerfilAloRRP , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarPerfilAloRRP><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><kitAfiliacion>true</kitAfiliacion><empresaId>%@</empresaId><distribuidorPadreId>%@</distribuidorPadreId></ns1:guardarPerfilAloRRP></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarPerfilAloRRP.cpUsuarioApi!,guardarPerfilAloRRP.cpPasswordApi!,guardarPerfilAloRRP.cpUsuarioId!,guardarPerfilAloRRP.cpKitAfiliacion!,guardarPerfilAloRRP.cpEmpresaId!,guardarPerfilAloRRP.cpDistribuidorPadreId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarPerfilAloRRPResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarPerfilAloBenefit with Message based on GuardarPerfilAloBenefit Object.

        - parameter guardarPerfilAloBenefit:  GuardarPerfilAloBenefit Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarPerfilAloBenefit(guardarPerfilAloBenefit : GuardarPerfilAloBenefit , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarPerfilAloBenefit><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId></ns1:guardarPerfilAloBenefit></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarPerfilAloBenefit.cpUsuarioApi!,guardarPerfilAloBenefit.cpPasswordApi!,guardarPerfilAloBenefit.cpUsuarioId!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarPerfilAloBenefitResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GuardarBitacora with Message based on GuardarBitacora Object.

        - parameter guardarBitacora:  GuardarBitacora Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarBitacora(guardarBitacora : GuardarBitacora , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarBitacora><usuarioId>0</usuarioId><ip>%@</ip><accion>%@</accion></ns1:guardarBitacora></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarBitacora.cpUsuarioId!,guardarBitacora.cpIp!,guardarBitacora.cpAccion!)

        self.makeSoapConnection(soapLocation:"http,://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarBitacoraResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: DesbloquearUsuario with Message based on DesbloquearUsuario Object.

        - parameter desbloquearUsuario:  DesbloquearUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    /*public func opDesbloquearUsuario(desbloquearUsuario : DesbloquearUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

        let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:desbloquearUsuario><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><preguntasSecretasEnviadas><preguntaSecretaId>0</preguntaSecretaId><preguntaId>0</preguntaId><respuesta>%@</respuesta></preguntasSecretasEnviadas></ns1:desbloquearUsuario></SOAP-ENV:Body></SOAP-ENV:Envelope>",desbloquearUsuario.cpUsuarioApi!,desbloquearUsuario.cpPasswordApi!,desbloquearUsuario.cpUsuarioId!,desbloquearUsuario.cpPreguntasSecretasEnviadas!,desbloquearUsuario.cpPreguntasSecretasEnviadas!,desbloquearUsuario.cpPreguntasSecretasEnviadas)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"DesbloquearUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }*/

    /**
        Calls the SOAP Operation: SetPreguntasSecretasUsuario with Message based on SetPreguntasSecretasUsuario Object.

        - parameter setPreguntasSecretasUsuario:  SetPreguntasSecretasUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    /*public func opSetPreguntasSecretasUsuario(setPreguntasSecretasUsuario : SetPreguntasSecretasUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:setPreguntasSecretasUsuarioAplicacionMovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><preguntaId1>%@</preguntaId1><repuestaId1>%@</repuestaId1><preguntaId2>%@</preguntaId2><repuestaId2>%@</repuestaId2><preguntaId3>%@</preguntaId3><repuestaId3>%@</repuestaId3></ns1:setPreguntasSecretasUsuarioAplicacionMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",setPreguntasSecretasUsuarioAplicacionMovil.cpUsuarioApi!,setPreguntasSecretasUsuarioAplicacionMovil.cpPasswordApi!,setPreguntasSecretasUsuarioAplicacionMovil.cpUsuarioId!,setPreguntasSecretasUsuarioAplicacionMovil.cpPreguntaId1!,setPreguntasSecretasUsuarioAplicacionMovil.cpRepuestaId1!,setPreguntasSecretasUsuarioAplicacionMovil.cpPreguntaId2!,setPreguntasSecretasUsuarioAplicacionMovil.cpRepuestaId2!,setPreguntasSecretasUsuarioAplicacionMovil.cpPreguntaId3!,setPreguntasSecretasUsuarioAplicacionMovil.cpRepuestaId3!)


    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SetPreguntasSecretasUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }*/

    /**
        Calls the SOAP Operation: SetPreguntasSecretasUsuarioAplicacionMovil with Message based on SetPreguntasSecretasUsuarioAplicacionMovil Object.

        - parameter setPreguntasSecretasUsuarioAplicacionMovil:  SetPreguntasSecretasUsuarioAplicacionMovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opSetPreguntasSecretasUsuarioAplicacionMovil(setPreguntasSecretasUsuarioAplicacionMovil : SetPreguntasSecretasUsuarioAplicacionMovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:setPreguntasSecretasUsuarioAplicacionMovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><preguntaId1>%@</preguntaId1><repuestaId1>%@</repuestaId1><preguntaId2>%@</preguntaId2><repuestaId2>%@</repuestaId2><preguntaId3>%@</preguntaId3><repuestaId3>%@</repuestaId3></ns1:setPreguntasSecretasUsuarioAplicacionMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",setPreguntasSecretasUsuarioAplicacionMovil.cpUsuarioApi!,setPreguntasSecretasUsuarioAplicacionMovil.cpPasswordApi!,setPreguntasSecretasUsuarioAplicacionMovil.cpUsuarioId!,setPreguntasSecretasUsuarioAplicacionMovil.cpPreguntaId1!,setPreguntasSecretasUsuarioAplicacionMovil.cpRepuestaId1!,setPreguntasSecretasUsuarioAplicacionMovil.cpPreguntaId2!,setPreguntasSecretasUsuarioAplicacionMovil.cpRepuestaId2!,setPreguntasSecretasUsuarioAplicacionMovil.cpPreguntaId3!,setPreguntasSecretasUsuarioAplicacionMovil.cpRepuestaId3!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SetPreguntasSecretasUsuarioAplicacionMovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: LoginAplicacionMovil with Message based on LoginAplicacionMovil Object.

        - parameter loginAplicacionMovil:  LoginAplicacionMovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opLoginAplicacionMovil(loginAplicacionMovil : LoginAplicacionMovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:loginAplicacionMovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><email>%@</email><movil>%@</movil><credencial>%@</credencial><ip>%@</ip></ns1:loginAplicacionMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",loginAplicacionMovil.cpUsuarioApi!,loginAplicacionMovil.cpPasswordApi!,loginAplicacionMovil.cpEmail!,loginAplicacionMovil.cpMovil!,loginAplicacionMovil.cpCredencial!,loginAplicacionMovil.cpIp!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LoginAplicacionMovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuarioporcuenta with Message based on GetUsuarioporcuenta Object.

        - parameter getUsuarioporcuenta:  GetUsuarioporcuenta Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuarioporcuenta(getUsuarioporcuenta : GetUsuarioporcuenta , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuarioporcuenta><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><cuenta>%@</cuenta></ns1:getUsuarioporcuenta></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuarioporcuenta.cpUsuarioApi!,getUsuarioporcuenta.cpPasswordApi!,getUsuarioporcuenta.cpCuenta!)

        self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuarioporcuentaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetUsuarioportarjeta with Message based on GetUsuarioportarjeta Object.

        - parameter getUsuarioportarjeta:  GetUsuarioportarjeta Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetUsuarioportarjeta(getUsuarioportarjeta : GetUsuarioportarjeta , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getUsuarioportarjeta><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><tarjeta>%@</tarjeta></ns1:getUsuarioportarjeta></SOAP-ENV:Body></SOAP-ENV:Envelope>",getUsuarioportarjeta.cpUsuarioApi!,getUsuarioportarjeta.cpPasswordApi!,getUsuarioportarjeta.cpTarjeta!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetUsuarioportarjetaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetEstadoToken with Message based on GetEstadoToken Object.

        - parameter getEstadoToken:  GetEstadoToken Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetEstadoToken(getEstadoToken : GetEstadoToken , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getEstadoToken><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><token>%@</token></ns1:getEstadoToken></SOAP-ENV:Body></SOAP-ENV:Envelope>",getEstadoToken.cpUsuarioApi!,getEstadoToken.cpPasswordApi!,getEstadoToken.cpToken!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetEstadoTokenResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GenerarCodigoMovil with Message based on GenerarCodigoMovil Object.

        - parameter generarCodigoMovil:  GenerarCodigoMovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGenerarCodigoMovil(generarCodigoMovil : GenerarCodigoMovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:generarCodigoMovil><movil>%@</movil></ns1:generarCodigoMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",generarCodigoMovil.cpMovil!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GenerarCodigoMovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GenerarCodigoMovilSMS with Message based on GenerarCodigoMovilSMS Object.

        - parameter generarCodigoMovilSMS:  GenerarCodigoMovilSMS Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGenerarCodigoMovilSMS(generarCodigoMovilSMS : GenerarCodigoMovilSMS , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:generarCodigoMovilSMS><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><movil>%@</movil></ns1:generarCodigoMovilSMS></SOAP-ENV:Body></SOAP-ENV:Envelope>",generarCodigoMovilSMS.cpUsuarioApi!,generarCodigoMovilSMS.cpPasswordApi!,generarCodigoMovilSMS.cpMovil!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GenerarCodigoMovilSMSResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: ValidarExisteNumero with Message based on ValidarExisteNumero Object.

        - parameter validarExisteNumero:  ValidarExisteNumero Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opValidarExisteNumero(validarExisteNumero : ValidarExisteNumero , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:validarExisteNumero><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><movil>%@</movil></ns1:validarExisteNumero></SOAP-ENV:Body></SOAP-ENV:Envelope>",validarExisteNumero.cpUsuarioApi!,validarExisteNumero.cpPasswordApi!,validarExisteNumero.cpMovil!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ValidarExisteNumeroResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: CambiarCredencial with Message based on CambiarCredencial Object.

        - parameter cambiarCredencial:  CambiarCredencial Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opCambiarCredencial(cambiarCredencial : CambiarCredencial , completionHandler:  @escaping (Data?, NSError?) -> Void) {

        let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><<SOAP-ENV:Body><ns1:cambiarCredencial><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><credencial>%@</credencial></ns1:cambiarCredencial></SOAP-ENV:Body></SOAP-ENV:Envelope>",cambiarCredencial.cpUsuarioApi!,cambiarCredencial.cpPasswordApi!,cambiarCredencial.cpUsuarioId!,cambiarCredencial.cpCredencial!)
        

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CambiarCredencialResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetTipoCuentasBancarias with Message based on GetTipoCuentasBancarias Object.

        - parameter getTipoCuentasBancarias:  GetTipoCuentasBancarias Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetTipoCuentasBancarias(getTipoCuentasBancarias : GetTipoCuentasBancarias , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getTipoCuentasBancarias><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getTipoCuentasBancarias></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTipoCuentasBancarias.cpUsuarioApi!,getTipoCuentasBancarias.cpPasswordApi!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTipoCuentasBancariasResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetBancosDisponibles with Message based on GetBancosDisponibles Object.

        - parameter getBancosDisponibles:  GetBancosDisponibles Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetBancosDisponibles(getBancosDisponibles : GetBancosDisponibles , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getBancosDisponibles><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getBancosDisponibles></SOAP-ENV:Body></SOAP-ENV:Envelope>",getBancosDisponibles.cpUsuarioApi!,getBancosDisponibles.cpPasswordApi!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetBancosDisponiblesResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GetTarjetasDisponibles with Message based on GetTarjetasDisponibles Object.

        - parameter getTarjetasDisponibles:  GetTarjetasDisponibles Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetTarjetasDisponibles(getTarjetasDisponibles : GetTarjetasDisponibles , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getTarjetasDisponibles><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getTarjetasDisponibles></SOAP-ENV:Body></SOAP-ENV:Envelope>",getTarjetasDisponibles.cpUsuarioApi!,getTarjetasDisponibles.cpPasswordApi!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetTarjetasDisponiblesResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: SolicitarTarjeta with Message based on SolicitarTarjeta Object.

        - parameter solicitarTarjeta:  SolicitarTarjeta Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opSolicitarTarjeta(solicitarTarjeta : SolicitarTarjeta , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:solicitarTarjeta><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><emailContacto>%@</emailContacto><direccionContacto>%@</direccionContacto><telefonoContacto>%@</telefonoContacto></ns1:solicitarTarjeta></SOAP-ENV:Body></SOAP-ENV:Envelope>",solicitarTarjeta.cpUsuarioApi!,solicitarTarjeta.cpPasswordApi!,solicitarTarjeta.cpUsuarioId!,solicitarTarjeta.cpEmailContacto!,solicitarTarjeta.cpDireccionContacto!,solicitarTarjeta.cpTelefonoContacto!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SolicitarTarjetaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: CambiarCredencialPorCorreo with Message based on CambiarCredencialPorCorreo Object.

        - parameter cambiarCredencialPorCorreo:  CambiarCredencialPorCorreo Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opCambiarCredencialPorCorreo(cambiarCredencialPorCorreo : CambiarCredencialPorCorreo , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:cambiarCredencialPorCorreo><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><email>%@</email><credencial>%@</credencial></ns1:cambiarCredencialPorCorreo></SOAP-ENV:Body></SOAP-ENV:Envelope>",cambiarCredencialPorCorreo.cpUsuarioApi!,cambiarCredencialPorCorreo.cpPasswordApi!,cambiarCredencialPorCorreo.cpEmail!,cambiarCredencialPorCorreo.cpCredencial!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CambiarCredencialPorCorreoResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: RecuperarCredencial with Message based on RecuperarCredencial Object.

        - parameter recuperarCredencial:  RecuperarCredencial Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opRecuperarCredencial(recuperarCredencial : RecuperarCredencial , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:recuperarCredencial><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><idioma>%@</idioma><email>%@</email></ns1:recuperarCredencial></SOAP-ENV:Body></SOAP-ENV:Envelope>",recuperarCredencial.cpUsuarioApi!,recuperarCredencial.cpPasswordApi!,recuperarCredencial.cpIdioma!,recuperarCredencial.cpEmail!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RecuperarCredencialResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: ActivarTarjeta with Message based on ActivarTarjeta Object.

        - parameter activarTarjeta:  ActivarTarjeta Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opActivarTarjeta(activarTarjeta : ActivarTarjeta , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:activarTarjeta><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><pin>%@</pin></ns1:activarTarjeta></SOAP-ENV:Body></SOAP-ENV:Envelope>",activarTarjeta.cpUsuarioApi!,activarTarjeta.cpPasswordApi!,activarTarjeta.cpUsuarioId!,activarTarjeta.cpPin!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ActivarTarjetaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: Lexis with Message based on Lexis Object.

        - parameter lexis:  Lexis Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opLexis(lexis : Lexis , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:lexis><usuarioId>%@</usuarioId></ns1:lexis></SOAP-ENV:Body></SOAP-ENV:Envelope>",lexis.cpUsuarioId!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LexisResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: AfiliarCuenta with Message based on AfiliarCuenta Object.

        - parameter afiliarCuenta:  AfiliarCuenta Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opAfiliarCuenta(afiliarCuenta : AfiliarCuenta , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:afiliarCuenta><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><bancoId>%@</bancoId><cuentaBancariaId>%@</cuentaBancariaId><numeroRuta>%@</numeroRuta><numeroCuenta>%@</numeroCuenta></ns1:afiliarCuenta></SOAP-ENV:Body></SOAP-ENV:Envelope>",afiliarCuenta.cpUsuarioApi!,afiliarCuenta.cpPasswordApi!,afiliarCuenta.cpUsuarioId!,afiliarCuenta.cpBancoId!,afiliarCuenta.cpCuentaBancariaId!,afiliarCuenta.cpNumeroRuta!,afiliarCuenta.cpNumeroCuenta!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"AfiliarCuentaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: AfiliarTarjeta with Message based on AfiliarTarjeta Object.

        - parameter afiliarTarjeta:  AfiliarTarjeta Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opAfiliarTarjeta(afiliarTarjeta : AfiliarTarjeta , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:afiliarTarjeta><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><nombre>%@</nombre><numeroTarjeta>%@</numeroTarjeta><fechaVencimiento>%@</fechaVencimiento><tipo>%@</tipo><cvv>%@</cvv><paisId>%@</paisId><estadoId>%@</estadoId><ciudadId>%@</ciudadId><condadoId>%@</condadoId><codigoPostal>%@</codigoPostal><direccion>%@</direccion></ns1:afiliarTarjeta></SOAP-ENV:Body></SOAP-ENV:Envelope>",afiliarTarjeta.cpUsuarioApi!,afiliarTarjeta.cpPasswordApi!,afiliarTarjeta.cpUsuarioId!,afiliarTarjeta.cpNombre!,afiliarTarjeta.cpNumeroTarjeta!,afiliarTarjeta.cpFechaVencimiento!,afiliarTarjeta.cpTipo!,afiliarTarjeta.cpCvv!,afiliarTarjeta.cpPaisId!,afiliarTarjeta.cpEstadoId!,afiliarTarjeta.cpCiudadId!,afiliarTarjeta.cpCondadoId!,afiliarTarjeta.cpCodigoPostal!,afiliarTarjeta.cpDireccion!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"AfiliarTarjetaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetAgentesComercialesPorEmpresa with Message based on GetAgentesComercialesPorEmpresa Object.

        - parameter getAgentesComercialesPorEmpresa:  GetAgentesComercialesPorEmpresa Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetAgentesComercialesPorEmpresa(getAgentesComercialesPorEmpresa : GetAgentesComercialesPorEmpresa , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getAgentesComercialesPorEmpresa><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><empresaId>%@</empresaId><tipoPersona>%@</tipoPersona></ns1:getAgentesComercialesPorEmpresa></SOAP-ENV:Body></SOAP-ENV:Envelope>",getAgentesComercialesPorEmpresa.cpUsuarioApi!,getAgentesComercialesPorEmpresa.cpPasswordApi!,getAgentesComercialesPorEmpresa.cpEmpresaId!,getAgentesComercialesPorEmpresa.cpTipoPersona!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetAgentesComercialesPorEmpresaResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GuardarAgenteComercial with Message based on GuardarAgenteComercial Object.

        - parameter guardarAgenteComercial:  GuardarAgenteComercial Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarAgenteComercial(guardarAgenteComercial : GuardarAgenteComercial , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarAgenteComercial><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><usuarioEmpresaId>%@</usuarioEmpresaId><nombre>%@</nombre><apellido>%@</apellido><credencial>%@</credencial><email>%@</email><movil>%@</movil><fechaNacimiento>%@</fechaNacimiento><direccion>%@</direccion><paisId>%@</paisId><estadoId>%@</estadoId><ciudadId>%@</ciudadId><condadoId>%@</condadoId><codigoPostal>%@</codigoPostal><link>%@</link><fechaVencimientoDocumento>%@</fechaVencimientoDocumento><estado>%@</estado><tipoDocumento>%@</tipoDocumento><numeroDocumento>%@</numeroDocumento><numeroIdentificacion>%@</numeroIdentificacion><telefono>%@</telefono></ns1:guardarAgenteComercial></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarAgenteComercial.cpUsuarioApi!,guardarAgenteComercial.cpPasswordApi!,guardarAgenteComercial.cpUsuarioId!,guardarAgenteComercial.cpUsuarioEmpresaId!,guardarAgenteComercial.cpNombre!,guardarAgenteComercial.cpApellido!,guardarAgenteComercial.cpCredencial!,guardarAgenteComercial.cpEmail!,guardarAgenteComercial.cpMovil!,guardarAgenteComercial.cpFechaNacimiento!,guardarAgenteComercial.cpDireccion!,guardarAgenteComercial.cpPaisId!,guardarAgenteComercial.cpEstadoId!,guardarAgenteComercial.cpCiudadId!,guardarAgenteComercial.cpCondadoId!,guardarAgenteComercial.cpCodigoPostal!,guardarAgenteComercial.cpLink!,guardarAgenteComercial.cpFechaVencimientoDocumento!,guardarAgenteComercial.cpEstado!,guardarAgenteComercial.cpTipoDocumento!,guardarAgenteComercial.cpNumeroDocumento!,guardarAgenteComercial.cpNumeroIdentificacion!,guardarAgenteComercial.cpTelefono!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarAgenteComercialResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: TransferirAlocoins with Message based on TransferirAlocoins Object.

        - parameter transferirAlocoins:  TransferirAlocoins Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opTransferirAlocoins(transferirAlocoins : TransferirAlocoins , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:transferirAlocoins><usuarioId1>%@</usuarioId1><usuarioId2>%@</usuarioId2><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><alocoins>%@</alocoins></ns1:transferirAlocoins></SOAP-ENV:Body></SOAP-ENV:Envelope>",transferirAlocoins.cpUsuarioId1!,transferirAlocoins.cpUsuarioId2!,transferirAlocoins.cpUsuarioApi!,transferirAlocoins.cpPasswordApi!,transferirAlocoins.cpAlocoins!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"TransferirAlocoinsResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: RecuperarPassword with Message based on RecuperarPassword Object.

        - parameter recuperarPassword:  RecuperarPassword Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opRecuperarPassword(recuperarPassword : RecuperarPassword , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:recuperarPassword><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><idioma>%@</idioma><email>%@</email><cliente>%@</cliente></ns1:recuperarPassword></SOAP-ENV:Body></SOAP-ENV:Envelope>",recuperarPassword.cpUsuarioApi!,recuperarPassword.cpPasswordApi!,recuperarPassword.cpIdioma!,recuperarPassword.cpEmail!,recuperarPassword.cpCliente!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"RecuperarPasswordResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: LoginSocialNetwork with Message based on LoginSocialNetwork Object.

        - parameter loginSocialNetwork:  LoginSocialNetwork Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opLoginSocialNetwork(loginSocialNetwork : LoginSocialNetwork , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:loginSocialNetwork><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><email>%@</email><movil>%@</movil><ip>%@</ip></ns1:loginSocialNetwork></SOAP-ENV:Body></SOAP-ENV:Envelope>",loginSocialNetwork.cpUsuarioApi!,loginSocialNetwork.cpPasswordApi!,loginSocialNetwork.cpEmail!,loginSocialNetwork.cpMovil!,loginSocialNetwork.cpIp!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LoginSocialNetworkResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: ValidarPin with Message based on ValidarPin Object.

        - parameter validarPin:  ValidarPin Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opValidarPin(validarPin : ValidarPin , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:validarPin><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><pin>%@</pin></ns1:validarPin></SOAP-ENV:Body></SOAP-ENV:Envelope>",validarPin.cpUsuarioApi!,validarPin.cpPasswordApi!,validarPin.cpUsuarioId!,validarPin.cpPin!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ValidarPinResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: ListadoProductosPorUsuario with Message based on ListadoProductosPorUsuario Object.

        - parameter listadoProductosPorUsuario:  ListadoProductosPorUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opListadoProductosPorUsuario(listadoProductosPorUsuario : ListadoProductosPorUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:listadoProductosPorUsuario><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId></ns1:listadoProductosPorUsuario></SOAP-ENV:Body></SOAP-ENV:Envelope>",listadoProductosPorUsuario.cpUsuarioApi!,listadoProductosPorUsuario.cpPasswordApi!,listadoProductosPorUsuario.cpUsuarioId!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"ListadoProductosPorUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: SendSmsTest with Message based on SendSmsTest Object.

        - parameter sendSmsTest:  SendSmsTest Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opSendSmsTest(sendSmsTest : SendSmsTest , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:sendSmsTest/></SOAP-ENV:Body></SOAP-ENV:Envelope>")

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendSmsTestResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: SendSmsSimbox with Message based on SendSmsSimbox Object.

        - parameter sendSmsSimbox:  SendSmsSimbox Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opSendSmsSimbox(sendSmsSimbox : SendSmsSimbox , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:sendSmsSimbox><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><number>%@</number><text>%@</text></ns1:sendSmsSimbox></SOAP-ENV:Body></SOAP-ENV:Envelope>",sendSmsSimbox.cpUsuarioApi!,sendSmsSimbox.cpPasswordApi!,sendSmsSimbox.cpNumber!,sendSmsSimbox.cpText!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"SendSmsSimboxResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: CambiarCredencialAplicacionMovil with Message based on CambiarCredencialAplicacionMovil Object.

        - parameter cambiarCredencialAplicacionMovil:  CambiarCredencialAplicacionMovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opCambiarCredencialAplicacionMovil(cambiarCredencialAplicacionMovil : CambiarCredencialAplicacionMovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:cambiarCredencialAplicacionMovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>0</usuarioId><credencial>%@</credencial></ns1:cambiarCredencialAplicacionMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",cambiarCredencialAplicacionMovil.cpUsuarioApi!,cambiarCredencialAplicacionMovil.cpPasswordApi!,cambiarCredencialAplicacionMovil.cpUsuarioId!,cambiarCredencialAplicacionMovil.cpCredencial!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CambiarCredencialAplicacionMovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj ,error) })
     }

    /**
        Calls the SOAP Operation: GenerarCodigoMovilSMSAplicacionMovil with Message based on GenerarCodigoMovilSMSAplicacionMovil Object.

        - parameter generarCodigoMovilSMSAplicacionMovil:  GenerarCodigoMovilSMSAplicacionMovil Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGenerarCodigoMovilSMSAplicacionMovil(generarCodigoMovilSMSAplicacionMovil : GenerarCodigoMovilSMSAplicacionMovil , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:generarCodigoMovilSMSAplicacionMovil><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><movil>%@</movil><email>%@</email></ns1:generarCodigoMovilSMSAplicacionMovil></SOAP-ENV:Body></SOAP-ENV:Envelope>",generarCodigoMovilSMSAplicacionMovil.cpUsuarioApi!,generarCodigoMovilSMSAplicacionMovil.cpPasswordApi!,generarCodigoMovilSMSAplicacionMovil.cpMovil!,generarCodigoMovilSMSAplicacionMovil.cpEmail!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GenerarCodigoMovilSMSAplicacionMovilResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj  ,error) })
     }

    /**
        Calls the SOAP Operation: CambiarCredencialAplicacionMovilEmailOrPhone with Message based on CambiarCredencialAplicacionMovilEmailOrPhone Object.

        - parameter cambiarCredencialAplicacionMovilEmailOrPhone:  CambiarCredencialAplicacionMovilEmailOrPhone Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opCambiarCredencialAplicacionMovilEmailOrPhone(cambiarCredencialAplicacionMovilEmailOrPhone : CambiarCredencialAplicacionMovilEmailOrPhone , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:cambiarCredencialAplicacionMovilEmailOrPhone><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><phoneOrEmail>%@</phoneOrEmail><credencial>%@</credencial></ns1:cambiarCredencialAplicacionMovilEmailOrPhone></SOAP-ENV:Body></SOAP-ENV:Envelope>",cambiarCredencialAplicacionMovilEmailOrPhone.cpUsuarioApi!,cambiarCredencialAplicacionMovilEmailOrPhone.cpPasswordApi!,cambiarCredencialAplicacionMovilEmailOrPhone.cpPhoneOrEmail!,cambiarCredencialAplicacionMovilEmailOrPhone.cpCredencial!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"CambiarCredencialAplicacionMovilEmailOrPhoneResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetPreguntasSecretas with Message based on GetPreguntasSecretas Object.

        - parameter getPreguntasSecretas:  GetPreguntasSecretas Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetPreguntasSecretas(getPreguntasSecretas : GetPreguntasSecretas , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getPreguntasSecretas><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><IdIdioma>0</IdIdioma></ns1:getPreguntasSecretas></SOAP-ENV:Body></SOAP-ENV:Envelope>",getPreguntasSecretas.cpUsuarioApi!,getPreguntasSecretas.cpPasswordApi!,getPreguntasSecretas.cpIdIdioma!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetPreguntasSecretasResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: Logintemp with Message based on Logintemp Object.

        - parameter logintemp:  Logintemp Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opLogintemp(logintemp : Logintemp , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:logintemp><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><email>%@</email><movil>%@</movil><credencial>%@</credencial><ip>%@</ip></ns1:logintemp></SOAP-ENV:Body></SOAP-ENV:Envelope>",logintemp.cpUsuarioApi!,logintemp.cpPasswordApi!,logintemp.cpEmail!,logintemp.cpMovil!,logintemp.cpCredencial!,logintemp.cpIp!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LogintempResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GetEstadosUsuario with Message based on GetEstadosUsuario Object.

        - parameter getEstadosUsuario:  GetEstadosUsuario Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGetEstadosUsuario(getEstadosUsuario : GetEstadosUsuario , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:getEstadosUsuario><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi></ns1:getEstadosUsuario></SOAP-ENV:Body></SOAP-ENV:Envelope>",getEstadosUsuario.cpUsuarioApi!,getEstadosUsuario.cpPasswordApi!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GetEstadosUsuarioResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: GuardarUsuarioSocialNetwork with Message based on GuardarUsuarioSocialNetwork Object.

        - parameter guardarUsuarioSocialNetwork:  GuardarUsuarioSocialNetwork Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opGuardarUsuarioSocialNetwork(guardarUsuarioSocialNetwork : GuardarUsuarioSocialNetwork , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:guardarUsuarioSocialNetwork><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><usuarioId>%@</usuarioId><nombre>%@</nombre><apellido>%@</apellido><email>%@</email><movil>%@</movil><codigoValidacionMovil>%@</codigoValidacionMovil></ns1:guardarUsuarioSocialNetwork></SOAP-ENV:Body></SOAP-ENV:Envelope>",guardarUsuarioSocialNetwork.cpUsuarioApi!,guardarUsuarioSocialNetwork.cpPasswordApi!,guardarUsuarioSocialNetwork.cpUsuarioId!,guardarUsuarioSocialNetwork.cpNombre!,guardarUsuarioSocialNetwork.cpApellido!,guardarUsuarioSocialNetwork.cpEmail!,guardarUsuarioSocialNetwork.cpMovil!,guardarUsuarioSocialNetwork.cpCodigoValidacionMovil!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"GuardarUsuarioSocialNetworkResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }

    /**
        Calls the SOAP Operation: Logout with Message based on Logout Object.

        - parameter logout:  Logout Object.
        - parameter completionHandler:  The Callback Handler.

        - returns: Void.
    */
    public func opLogout(logout : Logout , completionHandler:  @escaping (Data?, NSError?) -> Void) {

    let soapMessage = String(format:"<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ns1=\"http://ws.alodiga.ericsson.com/\"><SOAP-ENV:Body><ns1:logout><usuarioApi>%@</usuarioApi><passwordApi>%@</passwordApi><token>%@</token></ns1:logout></SOAP-ENV:Body></SOAP-ENV:Envelope>",logout.cpUsuarioApi!,logout.cpPasswordApi!,logout.cpToken!)

    self.makeSoapConnection(soapLocation:"http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService", soapAction: "", soapMessage: soapMessage, soapVersion: "1", className:"LogoutResponse", completionHandler: { (syedabsarObj:Data?, error: NSError? )->Void in completionHandler(syedabsarObj,error) })
     }


}
