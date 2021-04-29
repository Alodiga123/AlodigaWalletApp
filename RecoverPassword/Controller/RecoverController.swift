//
//  RecoverController.swift
//  IOSAlodigaWalletApp
//
//  Created by mac on 11/12/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class RecoverController{
    
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


    func getTokenAplication(dataTokenApli: GenerarCodigoMovilSMSAplicacionMovil ,completion: @escaping (_ res:ObjectTokenAplication?, String?) -> Void) {

        let client_RU = RegistroUnificadoClient()
        
        //Llamada del servicio TOKEN
        client_RU.opGenerarCodigoMovilSMSAplicacionMovil(generarCodigoMovilSMSAplicacionMovil: dataTokenApli) {(data,error) in
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }

            do{
                var objetResponse: ObjectTokenAplication
                var objetResponseError: ObjectErrorTokenAplication

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON TOKEN DE LA APLICACION ---- > ")
                print(jsonStr)

                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponse = try JSONDecoder().decode(ObjectTokenAplication.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorTokenAplication.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }

            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    func getRecoverPass(cambiarCredencialAplicacionMovil: CambiarCredencialAplicacionMovilEmailOrPhone ,completion: @escaping (_ res:ObjectChangePassForgot?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
        let util = Utils()
        
        util.getKeyEncript(key: cambiarCredencialAplicacionMovil.cpCredencial as! String) { (res, error) in
            if(res != nil){
                let clave : String
                clave = res! as String
                print(clave)
                cambiarCredencialAplicacionMovil.cpCredencial = clave
                
                
                //Llamada del servicio de Guardar Usuarios
                client_RU.opCambiarCredencialAplicacionMovilEmailOrPhone(cambiarCredencialAplicacionMovilEmailOrPhone: cambiarCredencialAplicacionMovil){(data,error) in
                
                    if error != nil {
                        completion(nil,"90")
                        print("error=\(String(describing: error))")
                        return
                    }
                    
                    do{
                        var objetResponseChange: ObjectChangePassForgot
                        var objetResponseErrorChange: ObjectErrorPassForgot

                        let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                        print("datastring " + datastring)
                        let parser = ParseXMLData(xml: datastring)
                        let jsonStr = parser.parseXML()
                        print("JSON PARA CAMBIAR LA CLAVE---- > ")
                        print(jsonStr)
                        
                        if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                        {
                            objetResponseChange = try JSONDecoder().decode(ObjectChangePassForgot.self, from: jsonStr.data(using: .utf8)!)
                            completion(objetResponseChange, nil)
                        }else{
                            objetResponseErrorChange = try JSONDecoder().decode(ObjectErrorPassForgot.self, from: jsonStr.data(using: .utf8)!)
                            completion(nil, objetResponseErrorChange.envelope.body.cambiar._return.codigoRespuesta)
                        }
                        
                    }catch{
                        print("Error: ")
                        print(error)
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
