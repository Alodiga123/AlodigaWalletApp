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
        let util = Utils()
    
       
        util.getKeyEncript(key: dataUser.cpCredencial as! String) { (resprin, errorprin) in
            if(resprin != nil){
                let clave : String
                clave = resprin! as String
                dataUser.cpCredencial = clave
                
                
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
            if errorprin != nil {
                let alert = ShowAlert()
                alert.showPaymentModeActionSheet(title: "error", message: util.getMessageErrorCodeOperation(code: errorprin!))
                print(errorprin!)
            }
        }
        
    }
    
}
