//
//  ControllerQr.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 5/10/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation


public class QrController{
    
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
    
    func GetBusinessInfoByCryptogram(qr : String ,completion: @escaping (_ res:ObjectQR?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        let datos = AL_GetBusinessInfoByCryptogram()
        datos.cpCryptogram = qr
        
        
        client_AC.opGetBusinessInfoByCryptogram(getBusinessInfoByCryptogram: datos) {(data,error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponse: ObjectQR
                var objetResponseError: ObjectErrorQr

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                //print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON QR ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponse = try JSONDecoder().decode(ObjectQR.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorQr.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }
                
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    
    func getCountriesHasBank(completion: @escaping (_ res:ObjectCountryRecharge?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
    
        let countryMovil = AL_GetCountriesHasBank()
        countryMovil.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String

        //Llamada del servicio de Paises
        client_AC.opGetCountriesHasBank(getCountriesHasBank: countryMovil) { (data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponseCountry: ObjectCountryRecharge
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
                    objetResponseCountry = try JSONDecoder().decode(ObjectCountryRecharge.self, from: jsonStr.data(using: .utf8)!)
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
        
    func getBankByCountry(bancosPorPais: AL_GetBankByCountryApp ,completion: @escaping (_ res:ObjectBankByCountryUS?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Paises
        client_AC.opGetBankByCountryApp(getBankByCountryApp: bancosPorPais) { (data, error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectResponseBankByCountry: ObjectBankByCountryUS
                var objectResponseErrorBankByCountry: ObjectErrorBankByCountry

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON PRODUCTOS POR PAIS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonCountry")
                    objectResponseBankByCountry = try JSONDecoder().decode(ObjectBankByCountryUS.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectResponseBankByCountry, nil)
                }else{
                    objectResponseErrorBankByCountry = try JSONDecoder().decode(ObjectErrorBankByCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectResponseErrorBankByCountry.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    
    
    
    //Cambiar el retorno por el Struct a devolver
     func parseResponse(completion: @escaping (ObjectError) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
        
        //Cambiar por los parametros del servicio a utilizar
        let cambiarCredencialAplicacionMovilEmailOrPhone = CambiarCredencialAplicacionMovilEmailOrPhone()
        
        //Seteo de parametros
        cambiarCredencialAplicacionMovilEmailOrPhone.cpUsuarioApi = "usuarioWS"
        cambiarCredencialAplicacionMovilEmailOrPhone.cpCredencial = "3456"
        cambiarCredencialAplicacionMovilEmailOrPhone.cpPhoneOrEmail = "kerwin2821@gmail.com"
        cambiarCredencialAplicacionMovilEmailOrPhone.cpPasswordApi = "passwordWS"
        
        //Llamada del servicio a utilizar
        client_RU.opCambiarCredencialAplicacionMovilEmailOrPhone(cambiarCredencialAplicacionMovilEmailOrPhone: cambiarCredencialAplicacionMovilEmailOrPhone) {(data,error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponse: ObjectError
                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                objetResponse = try JSONDecoder().decode(ObjectError.self, from: jsonStr.data(using: .utf8)!)
                print("****************************")
                print(objetResponse)
                completion(objetResponse)
            }catch{
                print("Error: ")
                print(error)
            }
        }
     }
}
