//
//  ValidateAccountController.swift
//  IOSAlodigaWalletApp
//
//  Created by mac on 1/12/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

public class ValidateAccountController{
    
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

    func getValidateAccount(salvarCuenta: AL_SaveCumplimient ,completion: @escaping (_ res:ObjectValidateAccount?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Preguntas Secretas
        client_AC.opSaveCumplimient(saveCumplimient: salvarCuenta) {(data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectValidateAccount: ObjectValidateAccount
                var objectValidateAccountError: ObjectErrorValidateAccount

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON DE VALIDAR CUENTA ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objectValidateAccount = try JSONDecoder().decode(ObjectValidateAccount.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectValidateAccount, nil)
                }else{
                    objectValidateAccountError = try JSONDecoder().decode(ObjectErrorValidateAccount.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectValidateAccountError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
}
