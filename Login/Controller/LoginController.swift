//
//  LoginController.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/7/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class LoginController{

    func getMessageErrorLogin(code: String) -> String {
        
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
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_SOSPECHOSO:
            return NSLocalizedString("web_services_response_95", comment: "")
         
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_PENDIENTE:
            return NSLocalizedString("web_services_response_96", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_USUARIO_NO_EXISTE:
            return NSLocalizedString("web_services_response_97", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_ERROR_CREDENCIALES:
            print(NSLocalizedString("web_services_response_98", comment: ""))
            return NSLocalizedString("web_services_response_98", comment: "")
        
        case Constant.WEB_SERVICES_RESPONSE_CODE_ERROR_INTERNO:
            return NSLocalizedString("web_services_response_99", comment: "")

        default:
            return NSLocalizedString("web_services_response_99", comment: "")
        }

    }
    
    
    
    

    
    //Cambiar el retorno por el Struct a devolver
    func getLogin(dataUser: LoginAplicacionMovil ,completion: @escaping (_ res:ObjectLogin?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
    
        dataUser.cpCredencial = "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"
        
        //Llamada del servicio a utilizar
        client_RU.opLoginAplicacionMovil(loginAplicacionMovil: dataUser) {(data,error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                completion(nil,"90")
                return
            }
            
            do{
                var objetResponse: ObjectLogin
                var objetResponseError: ObjectErrorLogin

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                //print("JSON ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                    || datastring.contains("<codigoRespuesta>12</codigoRespuesta>")
                {
                    Constant.defaults.setValue(jsonStr, forKey: "jsonLogin")
                    objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorLogin.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }
                
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    

   
    
    
}
