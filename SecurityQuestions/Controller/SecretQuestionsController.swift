//
//  SecretQuestionsController.swift
//  IOSAlodigaWalletApp
//
//  Created by mac on 11/19/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class SecretQuestionsController{
    
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

    func getSecretQuestions(preguntaSecreta: GetPreguntasSecretas ,completion: @escaping (_ res:ObjectSecretQuestions?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
        
        //Llamada del servicio de Preguntas Secretas
        client_RU.opGetPreguntasSecretas(getPreguntasSecretas: preguntaSecreta) {(data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectSecretQuestions: ObjectSecretQuestions
                var objectResponseSecretQuestionsError: ObjectErrorSecretQuestions

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON DE PREGUNTAS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objectSecretQuestions = try JSONDecoder().decode(ObjectSecretQuestions.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectSecretQuestions, nil)
                }else{
                    objectResponseSecretQuestionsError = try JSONDecoder().decode(ObjectErrorSecretQuestions.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectResponseSecretQuestionsError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    
    func getSendSecretAnswers(respuestasSecretas: SetPreguntasSecretasUsuarioAplicacionMovil ,completion: @escaping (_ res:ObjectPreguntasSecretasUsuario?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
        
        //Llamada del servicio de guardar las respuestas Secretas
        client_RU.opSetPreguntasSecretasUsuarioAplicacionMovil(setPreguntasSecretasUsuarioAplicacionMovil: respuestasSecretas) {(data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objectSecretAnswers: ObjectPreguntasSecretasUsuario
                var objectResponseSecretAnswersError: ObjectErrorPreguntasSecretasUsuario

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON DE RESPUESTAS SECRETAS ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objectSecretAnswers = try JSONDecoder().decode(ObjectPreguntasSecretasUsuario.self, from: jsonStr.data(using: .utf8)!)
                    completion(objectSecretAnswers, nil)
                }else{
                    objectResponseSecretAnswersError = try JSONDecoder().decode(ObjectErrorPreguntasSecretasUsuario.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objectResponseSecretAnswersError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
}
