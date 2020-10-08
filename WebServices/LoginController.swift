//
//  LoginController.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/7/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class LoginController{
    //Cambiar el retorno por el Struct a devolver
    func getLogin(generarCodigoMovilSMS: LoginAplicacionMovil ,completion: @escaping (ObjectLogin?, ObjectErrorLogin?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
    
        let loginAplicacionMovil = LoginAplicacionMovil()
        loginAplicacionMovil.cpMovil = "04142748070"
        loginAplicacionMovil.cpUsuarioApi = "usuarioWSP"
        loginAplicacionMovil.cpPasswordApi = "passwordWS"
        loginAplicacionMovil.cpEmail = "kerwin2821@gmail.com"
        loginAplicacionMovil.cpCredencial = "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"
        loginAplicacionMovil.cpIp = "192.168.3.20"
        
        //Llamada del servicio a utilizar
        client_RU.opLoginAplicacionMovil(loginAplicacionMovil: loginAplicacionMovil) {(data,error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponse: ObjectLogin
                var objetResponseError: ObjectErrorLogin

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON ---- > ")
                print(jsonStr)
                
                if jsonStr.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    print("ENTRO EN RESPUESTA 00")
                    objetResponse = try JSONDecoder().decode(ObjectLogin.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)

                }else{
                    print("ENTRO EN RESPUESTA error")

                    objetResponseError = try JSONDecoder().decode(ObjectErrorLogin.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError)

                }

        
            }catch{
                print("Error: ")
                print(error)
            }
        }
}
}
