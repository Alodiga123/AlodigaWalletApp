//
//  ResponseController.swift
//  webServices
//
//  Created by Adira Quintero on 10/5/20.
//  Copyright © 2020 Adira Quintero. All rights reserved.
//

import Foundation

public class ResponseController{
    
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
    
    func getSaveManualRecharge(saveManualRecharge : AL_ManualRecharge ,completion: @escaping (_ res:ObjectManualRecharge?, String?) -> Void) {
        
        let client_AC = AlodigaClient()
        
        //Llamada del servicio de Guardar Usuarios
        client_AC.opManualRecharge(manualRecharge: saveManualRecharge) {(data,error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponse: ObjectManualRecharge
                var objetResponseError: ObjectErrorManualRecharge

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                //print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON RECARGA MANUAL---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponse = try JSONDecoder().decode(ObjectManualRecharge.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorManualRecharge.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
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
