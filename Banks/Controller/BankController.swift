//
//  RegisterController.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 22/04/21.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

public class BankController{
    
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

    func getCountryHasBank(completion: @escaping (_ res:ObjetcCountryHasBank?, String?) -> Void) {
        
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
                var objetResponseCountryHasBank: ObjetcCountryHasBank
                var objetResponseCountryHasBankError: ObjetcErrorCountryHasBank

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON Country Has Bank ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonCountryHasBank")
                    objetResponseCountryHasBank = try JSONDecoder().decode(ObjetcCountryHasBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponseCountryHasBank, nil)
                }else{
                    objetResponseCountryHasBankError = try JSONDecoder().decode(ObjetcErrorCountryHasBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseCountryHasBankError.envelope.body.cambiar._return.codigoRespuesta)
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
                print("JSON BANCOS POR PAIS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonBankByCountryUS")
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
    
    func getAccountTypeBank(tipoDeCuenta: AL_GetAccountTypeBank ,completion: @escaping (_ res:ObjectAccountTypeBank?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Paises
        client_AC.opGetAccountTypeBank(getAccountTypeBank: tipoDeCuenta) { (data, error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectResponseAccountTypeBank: ObjectAccountTypeBank
                var objectResponseErrorAccountTypeBank: ObjectErrorAccountTypeBank

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON BANCOS POR PAIS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonAccountTypeBank")
                    objectResponseAccountTypeBank = try JSONDecoder().decode(ObjectAccountTypeBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectResponseAccountTypeBank, nil)
                }else{
                    objectResponseErrorAccountTypeBank = try JSONDecoder().decode(ObjectErrorAccountTypeBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectResponseErrorAccountTypeBank.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    
    func getGuardarBanco(guardarBancoUsuario: AL_SaveAccountBankUser ,completion: @escaping (_ res:ObjectSaveAccountBank?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Guardar Banso del usuario
        client_AC.opSaveAccountBankUser(saveAccountBankUser: guardarBancoUsuario) {(data,error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetSaveAccountResponse: ObjectSaveAccountBank
                var objetSaveAccountResponseError: ObjectErrorSaveAccountBank

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON Guardando Banco---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetSaveAccountResponse = try JSONDecoder().decode(ObjectSaveAccountBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetSaveAccountResponse, nil)
                }else{
                    objetSaveAccountResponseError = try JSONDecoder().decode(ObjectErrorSaveAccountBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetSaveAccountResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }
                
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
}
