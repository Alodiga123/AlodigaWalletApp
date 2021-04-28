//
//  ChangePasswordController.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 12/6/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class ChangePasswordController {
    
    func cambiarCredencialAplicacionMovil(credencial: String,userId: String, completion: @escaping (_ res:String?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()

             let cambiarCredencialAplicacionMovil = CambiarCredencialAplicacionMovil()
             //cambiarCredencialAplicacionMovil.cpCredencial = credencial.trimmingCharacters(in: NSCharacterSet.whitespaces)
             cambiarCredencialAplicacionMovil.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
             cambiarCredencialAplicacionMovil.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
             cambiarCredencialAplicacionMovil.cpUsuarioId = userId
        
        let util = Utils()
        
        util.getKeyEncript(key: credencial) { (resprin, errorprin) in
            if(resprin != nil){
                let clave : String
                clave = resprin! as String
                print(clave)
                cambiarCredencialAplicacionMovil.cpCredencial = clave
                
                
                
                        client_RU.opCambiarCredencialAplicacionMovil(cambiarCredencialAplicacionMovil: cambiarCredencialAplicacionMovil) {(data,error) in
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
                                    //objetResponseError = try JSONDecoder().decode(ObjectErrorGetUsuarioByEmail.self, from: jsonStr.data(using: .utf8)!)
                                    completion(nil, "90")
                                    //objetResponseError.envelope.body.cambiar._return.codigoRespuesta
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

