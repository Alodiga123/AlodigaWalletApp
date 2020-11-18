//
//  TransferenceController.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/16/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation


public class TransferenceController {
    

//Cambiar el retorno por el Struct a devolver
    func getUserByEmail(data: String, completion: @escaping (_ res:String?, String?) -> Void) {
    
    let client_RU = RegistroUnificadoClient()

            let getUsuarioporemail = GetUsuarioporemail()
            getUsuarioporemail.cpEmail = "kerwin2821@gmail.com"
            getUsuarioporemail.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
            getUsuarioporemail.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
            
            client_RU.opGetUsuarioporemail(getUsuarioporemail: getUsuarioporemail) {(data,error) in
                if error != nil {
                    print("error=\(String(describing: error))")
                    completion(nil,"90")
                    return
                }
                
                do{
                    //var objetResponse: ObjectGetUsuarioByEmail
                    var objetResponseError: ObjectErrorGetUsuarioByEmail

                    let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                    print("datastring " + datastring)
                    let parser = ParseXMLData(xml: datastring)
                    let jsonStr = parser.parseXML()
                    //print("JSON ---- > ")
                    print(jsonStr)
                    
                    if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                    {
                        Constant.defaults.setValue(jsonStr, forKey: "jsonUserByEmail")
                        //objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByEmail.self, from: jsonStr.data(using: .utf8)!)
                        //print(objetResponse)
                        completion(jsonStr, nil)
                    }else{
                        objetResponseError = try JSONDecoder().decode(ObjectErrorGetUsuarioByEmail.self, from: jsonStr.data(using: .utf8)!)
                        completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                    }
                    
                }catch{
                    print("Error: ")
                    print(error)
                }

            }
}


    
    
    func getUserByMovil(data: String, completion: @escaping (_ res:String?, String?) -> Void) {
    
    let client_RU = RegistroUnificadoClient()
                
            let getUsuariopormovil = GetUsuariopormovil()
            getUsuariopormovil.cpMovil = "584241934005"
            getUsuariopormovil.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
            getUsuariopormovil.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
            
            client_RU.opGetUsuariopormovil(getUsuariopormovil: getUsuariopormovil) {(data,error) in
                
                if error != nil {
                    print("error=\(String(describing: error))")
                    completion(nil,"90")
                    return
                }
                
                do{
                    //var objetResponse: ObjectGetUsuarioByMovil
                    var objetResponseError: ObjectErrorGetUsuarioByMovil

                    let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                    print("datastring " + datastring)
                    let parser = ParseXMLData(xml: datastring)
                    let jsonStr = parser.parseXML()
                    //print("JSON ---- > ")
                    print(jsonStr)
                    
                    if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                        
                    {
                        Constant.defaults.setValue(jsonStr, forKey: "jsonUserByMovil")
                        //objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByMovil.self, from: jsonStr.data(using: .utf8)!)
                        completion(jsonStr, nil)
                    }else{
                        objetResponseError = try JSONDecoder().decode(ObjectErrorGetUsuarioByMovil.self, from: jsonStr.data(using: .utf8)!)
                        completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                    }
                    
                }catch{
                    print("Error: ")
                    print(error)
                }
            }
}

    
    
    func getMessageErrorTransference(code: String) -> String {
        
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
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_NUMERO_TELEFONO_YA_EXISTE:
            return NSLocalizedString("web_services_response_08", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_PRIMER_INGRESO:
            return NSLocalizedString("web_services_response_12", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_USER_NOT_HAS_PHONE_NUMBER:
            return NSLocalizedString("web_services_response_22", comment: "")
            
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
    
    
    
    func proccesTransference(saveTransferBetweenAccount: AL_SaveTransferBetweenAccount, completion: @escaping (_ res:String?, String?) -> Void) {
    
    let client_AL = AlodigaClient()
                
       
        
        //getUsuariopormovil.cpMovil = "584241934005"
             
        client_AL.opSaveTransferBetweenAccount(saveTransferBetweenAccount: saveTransferBetweenAccount) {(data,error) in
                
                if error != nil {
                    print("error=\(String(describing: error))")
                    completion(nil,"90")
                    return
                }
                
                do{
                    //var objetResponse: ObjectGetUsuarioByMovil
                    var objetResponseError: ObjectErrorGetUsuarioByMovil

                    let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                    print("datastring " + datastring)
                    let parser = ParseXMLData(xml: datastring)
                    let jsonStr = parser.parseXML()
                    //print("JSON ---- > ")
                    print(jsonStr)
                    
                    if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                        
                    {
                        Constant.defaults.setValue(jsonStr, forKey: "jsonUserByMovil")
                        //objetResponse = try JSONDecoder().decode(ObjectGetUsuarioByMovil.self, from: jsonStr.data(using: .utf8)!)
                        completion(jsonStr, nil)
                    }else{
                        objetResponseError = try JSONDecoder().decode(ObjectErrorGetUsuarioByMovil.self, from: jsonStr.data(using: .utf8)!)
                        completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                    }
                    
                }catch{
                    print("Error: ")
                    print(error)
                }
            }
}
    
    
    
    func getMessageErrorProcessTransference(code: String) -> String {
        
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
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_NUMERO_TELEFONO_YA_EXISTE:
            return NSLocalizedString("web_services_response_08", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_PRIMER_INGRESO:
            return NSLocalizedString("web_services_response_12", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_USER_NOT_HAS_PHONE_NUMBER:
            return NSLocalizedString("web_services_response_22", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_TRANSACTION_AMOUNT_LIMIT:
            return NSLocalizedString("web_services_response_30", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_TRANSACTION_MAX_NUMBER_BY_ACCOUNT:
            return NSLocalizedString("web_services_response_31", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_TRANSACTION_MAX_NUMBER_BY_CUSTOMER:
            return NSLocalizedString("web_services_response_32", comment: "")
            
        case Constant.WEB_SERVICES_RESPONSE_CODE_USER_HAS_NOT_BALANCE:
            return NSLocalizedString("web_services_response_33", comment: "")
            
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

}
