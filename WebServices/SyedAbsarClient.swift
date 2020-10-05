 
/* 
Copyright (c) 2020 Syed Absar Karim https://www.linkedin.com/in/syedabsar

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
 
import Foundation

/* Soap Client Generated from WSDL: http://ec2-52-42-63-64.us-west-2.compute.amazonaws.com:8080/RegistroUnificado/APIRegistroUnificadoService?wsdl powered by http://www.wsdl2swift.com */

public class SyedAbsarClient {

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

    /**
        Private Method: Make Soap Connection.
        
        - parameter soapLocation: String.
        - soapAction: String.
        - soapMessage: String.
        - soapVersion: String (1.1 Or 1.2).
        - className: String.
        - completionHandler: Handler.
        - returns: Void.
        */
    public func makeSoapConnection(soapLocation: String, soapAction: String, soapMessage: String,  soapVersion: String, className: String, completionHandler: @escaping (Data?, NSError?) -> Void) {
            let url = URL(string: soapLocation)
            var request = URLRequest(url: url!)
            let msgLength  = soapMessage.count
            let data = soapMessage.data(using: String.Encoding.utf8, allowLossyConversion: false)
            request.httpMethod = "POST"
            request.addValue("text/xml; charset=utf-8", forHTTPHeaderField: "Content-Type")
            request.addValue(String(msgLength), forHTTPHeaderField: "Content-Length")
            // request.addValue(soapAction, forHTTPHeaderField: "SOAPAction")
            request.httpBody = data
            
             // or false

        let session = URLSession.shared

        
        let task = session.dataTask(with: request) {dataresponse, response, errorresponse in

            if errorresponse != nil {
                print("error=\(String(describing: errorresponse))")
                return
            }
            
            print("response = \(String(describing: response))")
            completionHandler(dataresponse,errorresponse as NSError?)
        }
        task.resume()
    }
}
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
  Exception. 
*/
@objc(Exception)
public class Exception : SyedAbsarObjectBase {


/// Message
var cpMessage: String?

override static func cpKeys() -> Array<String> {
return ["Message"]
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
@objc(SendSmsSimbox)
public class SendSmsSimbox : SyedAbsarObjectBase {


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
@objc(SendSmsSimboxResponse)
public class SendSmsSimboxResponse : SyedAbsarObjectBase {


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
var cpUsuarioId: Int?

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
@objc(GenerarCodigoMovilSMS)
public class GenerarCodigoMovilSMS : SyedAbsarObjectBase {


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
@objc(GenerarCodigoMovilSMSResponse)
public class GenerarCodigoMovilSMSResponse : SyedAbsarObjectBase {


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
@objc(SendMailTestResponse)
public class SendMailTestResponse : SyedAbsarObjectBase {


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


/**
    A generic base class for all Objects.
*/
public class SyedAbsarObjectBase : NSObject
{
    var xmlResponseString: String?

    class func cpKeys() -> Array <String>
    {
        return []
    }
    
    required override public init(){}
  
    class func newInstance() -> Self {
        return self.init()
    }


}
