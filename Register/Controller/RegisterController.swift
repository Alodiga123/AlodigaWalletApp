//
//  RegisterController.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 10/7/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

public class RegisterController{
    //Cambiar el retorno por el Struct a devolver
    func getCountry(generarCodigoCountry: AL_GetCountries ,completion: @escaping (_ res:ObjectCountry?, String?) -> Void) {
        
        let client_RU = AlodigaClient()
    
        let countryMovil = AL_GetCountries()
//        loginAplicacionMovil.cpMovil = "04142748070"
//        loginAplicacionMovil.cpUsuarioApi = "usuarioWS"
//        loginAplicacionMovil.cpPasswordApi = "passwordWS"
//        loginAplicacionMovil.cpEmail = "kerwin2821@gmail.com"
//        loginAplicacionMovil.cpIp = "192.168.3.20"
        
        //Llamada del servicio a utilizar
        client_RU.opGetCountries(getCountries: countryMovil) { (data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponse: ObjectCountry
                var objetResponseError: ObjectErrorCountry

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponse = try JSONDecoder().decode(ObjectCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }
                
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
}
