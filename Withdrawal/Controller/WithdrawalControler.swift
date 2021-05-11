//
//  WithdrawalControler.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 03/12/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

public class WithdrawalControler{
    
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

    func getCountry(generarCodigoCountry: AL_GetCountries ,completion: @escaping (_ res:ObjectCountry?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
    
        let countryMovil = AL_GetCountries()
        
        //Llamada del servicio de Paises
        client_AC.opGetCountries(getCountries: countryMovil) { (data, error) in
            
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
    
    func getAccountBankByUser(completion: @escaping (_ res:ObjectAccountBankByUser?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        let accountBankMovil = AL_GetAccountBankByUser()
        
        accountBankMovil.cpUserId = Constant.defaults.value(forKey: "usuarioID") as! String
        
        //Llamada del servicio de Paises
        client_AC.opGetAccountBankByUser(getAccountBankByUser: accountBankMovil) { (data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponseAccountBankByUser: ObjectAccountBankByUser
                var objetResponseAccountBankByUserError: ObjectErrorAccountBankByUser

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON Account Bank By User ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonAccountBankByUser")
                    objetResponseAccountBankByUser = try JSONDecoder().decode(ObjectAccountBankByUser.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponseAccountBankByUser, nil)
                }else{
                    objetResponseAccountBankByUserError = try JSONDecoder().decode(ObjectErrorAccountBankByUser.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseAccountBankByUserError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
        
    func getBankByCountry(bancosPorPais: AL_GetBankByCountryApp ,completion: @escaping (_ res:ObjectBankByCountry?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Paises
        client_AC.opGetBankByCountryApp(getBankByCountryApp: bancosPorPais) { (data, error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectResponseBankByCountry: ObjectBankByCountry
                var objectResponseErrorBankByCountry: ObjectErrorBankByCountry

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON PRODUCTOS POR PAIS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonBankByCountry")
                    objectResponseBankByCountry = try JSONDecoder().decode(ObjectBankByCountry.self, from: jsonStr.data(using: .utf8)!)
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
    
    
    func getProductByBank(productosPorBancos: AL_GetProductsByBankId ,completion: @escaping (_ res:ObjectProductsByBank?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Paises
        client_AC.opGetProductsByBankId(getProductsByBankId: productosPorBancos) { (data, error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectResponseProductsByBank: ObjectProductsByBank
                var objectResponseErrorProductsByBank: ObjectErrorProductsByBank

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON PRODUCTOS POR PAIS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonProductsByBank")
                    objectResponseProductsByBank = try JSONDecoder().decode(ObjectProductsByBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectResponseProductsByBank, nil)
                }else{
                    objectResponseErrorProductsByBank = try JSONDecoder().decode(ObjectErrorProductsByBank.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectResponseErrorProductsByBank.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    func getManualWithdrawals(retirosManuales: AL_ManualWithdrawals ,completion: @escaping (_ res:ObjectManualWithdrawals?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Recarga Manual
        client_AC.opManualWithdrawals(manualWithdrawals: retirosManuales) { (data, error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectResponseManualWithdrawals: ObjectManualWithdrawals
                var objectResponseErrorManualWithdrawals: ObjectErrorManualWithdrawals

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON RECARGA MANUAL ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonManualWithdrawals")
                    objectResponseManualWithdrawals = try JSONDecoder().decode(ObjectManualWithdrawals.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectResponseManualWithdrawals, nil)
                }else{
                    objectResponseErrorManualWithdrawals = try JSONDecoder().decode(ObjectErrorManualWithdrawals.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectResponseErrorManualWithdrawals.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
}
