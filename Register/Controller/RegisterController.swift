//
//  RegisterController.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 10/7/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

public class RegisterController{
    
    func getMessageError(code: String) -> String {
        switch code {
        case Constant.WEB_SERVICES_RESPONSE_CODE_DATOS_INVALIDOS:
            return NSLocalizedString("web_services_response_01", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_CONTRASENIA_EXPIRADA:
            return NSLocalizedString("web_services_response_03", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_IP_NO_CONFIANZA:
            return NSLocalizedString("web_services_response_04", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_CREDENCIALES_INVALIDAS:
            return NSLocalizedString("web_services_response_05", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_BLOQUEADO:
            return NSLocalizedString("web_services_response_06", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_VALIDACION_INVALIDO:
            return NSLocalizedString("web_services_response_07", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_NUMERO_TELEFONO_YA_EXISTE:
            return NSLocalizedString("web_services_response_08", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_PRIMER_INGRESO:
            return NSLocalizedString("web_services_response_12", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_SOSPECHOSO:
            return NSLocalizedString("web_services_response_95", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_PENDIENTE:
            return NSLocalizedString("web_services_response_96", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_NO_EXISTE:
            return NSLocalizedString("web_services_response_97", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_ERROR_CREDENCIALES:
            return NSLocalizedString("web_services_response_98", comment: "")
        case Constant.WEB_SERVICES_RESPONSE_CODE_ERROR_INTERNO:
            return NSLocalizedString("web_services_response_99", comment: "")
        default:
            return NSLocalizedString("web_services_response_99", comment: "")
        }

    }
    
    



    func getCountry(generarCodigoCountry: AL_GetCountries ,completion: @escaping (_ res:ObjectCountry?, String?) -> Void) {
        
        let client_RU = AlodigaClient()
    
        let countryMovil = AL_GetCountries()
        
        //Llamada del servicio de Paises
        client_RU.opGetCountries(getCountries: countryMovil) { (data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponseCountry: ObjectCountry
                var objetResponseCountryError: ObjectErrorCountry

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonCountry")
                    objetResponseCountry = try JSONDecoder().decode(ObjectCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponseCountry, nil)
                }else{
                    objetResponseCountryError = try JSONDecoder().decode(ObjectErrorCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseCountryError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    

    func getToken(dataToken: GenerarCodigoMovilSMS ,completion: @escaping (_ res:ObjectToken?, String?) -> Void) {

        let client_RU = RegistroUnificadoClient()
        
        //Llamada del servicio TOKEN
        client_RU.opGenerarCodigoMovilSMS(generarCodigoMovilSMS: dataToken) {(data,error) in
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }

            do{
                var objetResponse: ObjectToken
                var objetResponseError: ObjectErrorToken

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON TOKEN ---- > ")
                print(jsonStr)

                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponse = try JSONDecoder().decode(ObjectToken.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorToken.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }

            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    
    func getDocumentPersonTypeByCountry(generarDocumentPersonType: AL_GetDocumentPersonTypeByCountry ,completion: @escaping (_ res:ObjectDocumentPersonTypeByContry?, String?) -> Void) {
        
        let client_RU = AlodigaClient()
    
        //let documentPersonTypes = AL_GetDocumentPersonTypeByCountry()
        
        //Llamada del servicio de DocumentPersonTypesByCountry
        client_RU.opGetDocumentPersonTypeByCountry(getDocumentPersonTypeByCountry: generarDocumentPersonType) { (data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponseDocumentPersonTypeByContry: ObjectDocumentPersonTypeByContry
                var objetResponseDocumentPersonTypeByContryError: ObjectErrorDocumentPersonTypeByContry

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                //print("JSON Document By Country---- > ")
                //print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonDocumentPersonTypeByContry")
                    objetResponseDocumentPersonTypeByContry = try JSONDecoder().decode(ObjectDocumentPersonTypeByContry.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponseDocumentPersonTypeByContry, nil)
                }else{
                    objetResponseDocumentPersonTypeByContryError = try JSONDecoder().decode(ObjectErrorDocumentPersonTypeByContry.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseDocumentPersonTypeByContryError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    func getGuardarUsuario(generarRegistro: GuardarUsuarioAplicacionMovil ,completion: @escaping (_ res:ObjectRegisterUser?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()    
        let util = Utils()
        
        util.getKeyEncript(key: generarRegistro.cpCredencial!.trimmingCharacters(in: NSCharacterSet.whitespaces)) { (res, error) in
            if(res != nil){
                var clave : String
                clave = res! as String
                //print(clave)
                generarRegistro.cpCredencial = clave.trimmingCharacters(in: NSCharacterSet.whitespaces)
        
                util.getKeyEncript(key: generarRegistro.cpPin!.trimmingCharacters(in: NSCharacterSet.whitespaces)) { (respin, errorpin) in
                    if(respin != nil){
                        var pin : String
                        pin = respin! as String
                        //print(pin)
                        generarRegistro.cpPin = pin//.trimmingCharacters(in: NSCharacterSet.whitespaces)
                
                        
                        //print("DATOS ------------------")
                        print(generarRegistro.cpPin)
                        
                        //print("DATOS CRECENCIAL ------------------")
                        //print(generarRegistro.cpCredencial)

                        
                        
                        //Llamada del servicio de Guardar Usuarios
                        client_RU.opGuardarUsuarioAplicacionMovil(guardarUsuarioAplicacionMovil: generarRegistro) {(data,errorgu) in
                            
                            if errorgu != nil {
                                completion(nil,"90")
                                print("error=\(String(describing: errorgu))")
                                return
                            }
                            
                            do{
                                var objetResponse: ObjectRegisterUser
                                var objetResponseError: ObjectErrorRegisterUser

                                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                                //print("datastring " + datastring)
                                let parser = ParseXMLData(xml: datastring)
                                let jsonStr = parser.parseXML()
                                print("JSON REGISTER---- > ")
                                print(jsonStr)
                                
                                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                                {
                                    objetResponse = try JSONDecoder().decode(ObjectRegisterUser.self, from: jsonStr.data(using: .utf8)!)
                                    completion(objetResponse, nil)
                                }else{
                                    objetResponseError = try JSONDecoder().decode(ObjectErrorRegisterUser.self, from: jsonStr.data(using: .utf8)!)
                                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                                }
                                
                            }catch{
                                print("Error: ")
                                print(errorgu)
                            }
                        }
                        
                        
                        
                        
                    }
                    if errorpin != nil {
                        let alert = ShowAlert()
                        alert.showPaymentModeActionSheet(title: "error", message: util.getMessageErrorCodeOperation(code: errorpin!))
                        print(errorpin!)
                    }
                }
                
                
                
                
                
            }
            if error != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: util.getMessageErrorCodeOperation(code: error!))
                print(error!)
            }
        }
        
        

    }
}
