//
//  ResponseController.swift
//  webServices
//
//  Created by Adira Quintero on 10/5/20.
//  Copyright © 2020 Adira Quintero. All rights reserved.
//

import Foundation

public class ResponseController{
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
