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
    func getUserByEmailOrPhone(option: String, data: String, completion: @escaping (_ res:ObjectLogin?, String?) -> Void) {
    
    let client_RU = RegistroUnificadoClient()

        if option == "0" {
            let getUsuarioporemail = GetUsuarioporemail()
            getUsuarioporemail.cpEmail = "kerwin2821@gmail.com999"
            getUsuarioporemail.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
            getUsuarioporemail.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
            
            client_RU.opGetUsuarioporemail(getUsuarioporemail: getUsuarioporemail) {(data,error) in
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
                    
                    /*if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                        || datastring.contains("<codigoRespuesta>12</codigoRespuesta>")
                    {
                        Constant.defaults.setValue(jsonStr, forKey: "jsonLogin")
                        objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: jsonStr.data(using: .utf8)!)
                        completion(objetResponse, nil)
                    }else{
                        objetResponseError = try JSONDecoder().decode(ObjectErrorLogin.self, from: jsonStr.data(using: .utf8)!)
                        completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                    }*/
                    
                }catch{
                    print("Error: ")
                    print(error)
                }

            }
            
        }else{
           
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
                    var objetResponse: ObjectLogin
                    var objetResponseError: ObjectErrorLogin

                    let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                    print("datastring " + datastring)
                    let parser = ParseXMLData(xml: datastring)
                    let jsonStr = parser.parseXML()
                    //print("JSON ---- > ")
                    print(jsonStr)
                    
                   /* if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                        || datastring.contains("<codigoRespuesta>12</codigoRespuesta>")
                    {
                        Constant.defaults.setValue(jsonStr, forKey: "jsonLogin")
                        objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: jsonStr.data(using: .utf8)!)
                        completion(objetResponse, nil)
                    }else{
                        objetResponseError = try JSONDecoder().decode(ObjectErrorLogin.self, from: jsonStr.data(using: .utf8)!)
                        completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                    }*/
                    
                }catch{
                    print("Error: ")
                    print(error)
                }
            }
            
        }
        
  
    
    
  
    
    

}



}
