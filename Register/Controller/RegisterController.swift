//
//  RegisterController.swift
//  IOSAlodigaWalletApp
//
//  Created by Lulymar Gutierrez on 10/7/20.
//  Copyright © 2020 Lulymar Gutierrez. All rights reserved.
//

import Foundation

public class RegisterController{
//public extension RegisterController{
    
    func getContryData(url: String, completion: @escaping([Country])->()){
        let session = URLSession(configuration: .default)
    
        session.dataTask(with: URL(string: url)!){(data, _, err) in
            if err != nil{
                print(err?.localizedDescription)
                print("error=\(String(describing: err))")
                return
            }
    
            do{
                let countries = try JSONDecoder().decode(Country.self, from: data!)
                //completion (countries,nil)
            }catch{
                print(error)
            }
        }
    }


    func getCountry(generarCodigoCountry: AL_GetCountries ,completion: @escaping (_ res:ObjectCountry?, String?) -> Void) {
        
        let client_RU = AlodigaClient()
    
        let countryMovil = AL_GetCountries()
        
        //Llamada del servicio a utilizar
        client_RU.opGetCountries(getCountries: countryMovil) { (data, error) in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
//            func getContryData(url: String, completion:@escaping([JSONData])->()){
//                let session = URLSession(configuration: .default)
//
//                session.dataTask(with: URL(string: url)!){(data, _, err) in
//                    if err != nil{
//                        print(err?.localizedDescription)
//                        print("error=\(String(describing: err))")
//                        return
//                    }
//                }
//            }
            
            do{
                var objetResponseCountry: ObjectCountry
                var objetResponseCountryError: ObjectErrorCountry

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON ---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponseCountry = try JSONDecoder().decode(ObjectCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponseCountry, nil)
                }else{
                    objetResponseCountryError = try JSONDecoder().decode(ObjectErrorCountry.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseCountryError.envelope.body.cambiar._return.codigoRespuesta)
                }
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
    
    
//    func getToken(generarCodigoToken:  ,completion: @escaping (_ res:ObjectToken?, String?) -> Void) {
//
//        let client_RU = RegistroUnificadoClient()
//        let tokenMovil = RespuestaNuevoToken()
//
//        //Llamada del servicio a utilizar
//        client_RU.opGetEstadoToken(getEstadoToken: tokenMovil, completionHandler: <#(Data?, NSError?) -> Void#>)
//        //client_RU.opGetCountries(getCountries: tokenMovil) { (data, error) in
//
//            if error != nil {
//                print("error=\(String(describing: error))")
//                return
//            }
//
//            do{
//                var objetResponse: ObjectCountry
//                var objetResponseError: ObjectErrorCountry
//
//                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
//                print("datastring " + datastring)
//                let parser = ParseXMLData(xml: datastring)
//                let jsonStr = parser.parseXML()
//                print("JSON ---- > ")
//                print(jsonStr)
//
//                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
//                {
//                    objetResponse = try JSONDecoder().decode(ObjectCountry.self, from: jsonStr.data(using: .utf8)!)
//                    completion(objetResponse, nil)
//                }else{
//                    objetResponseError = try JSONDecoder().decode(ObjectErrorCountry.self, from: jsonStr.data(using: .utf8)!)
//                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
//                }
//
//            }catch{
//                print("Error: ")
//                print(error)
//            }
//        }
//    }
//
    
    
    func getGuardarUsuario(generarRegistro: GuardarUsuarioAplicacionMovil ,completion: @escaping (_ res:ObjectRegisterUser?, String?) -> Void) {
        
        let client_RU = RegistroUnificadoClient()
        let registerAplicacionMovil = GuardarUsuarioAplicacionMovil()
        
        registerAplicacionMovil.cpUsuarioApi = "usuarioWS"
        registerAplicacionMovil.cpPasswordApi = "passwordWS"
        registerAplicacionMovil.cpUsuarioId = ""
        registerAplicacionMovil.cpNombre = ""
        registerAplicacionMovil.cpApellido = ""
        registerAplicacionMovil.cpCredencial = ""
        registerAplicacionMovil.cpEmail = "kerwin2821@gmail.com"
        registerAplicacionMovil.cpMovil = "04142748070"
        registerAplicacionMovil.cpFechaNacimiento = ""
        registerAplicacionMovil.cpDireccion = ""
        registerAplicacionMovil.cpPaisId = ""
        registerAplicacionMovil.cpEstadoId = ""
        registerAplicacionMovil.cpCiudadId = ""
        registerAplicacionMovil.cpCondadoId = ""
        registerAplicacionMovil.cpCodigoPostal = ""
        registerAplicacionMovil.cpCodigoValidacionMovil = ""
        registerAplicacionMovil.cpNombreImagen = ""
        registerAplicacionMovil.cpImagenBytes = ""
        registerAplicacionMovil.cpLink = ""
        registerAplicacionMovil.cpPin = ""
        
        //registerAplicacionMovil.cpIp = "192.168.3.20"
        
        //Llamada del servicio a utilizar
        client_RU.opGuardarUsuarioAplicacionMovil(guardarUsuarioAplicacionMovil: registerAplicacionMovil) {(data,error) in
            
            if error != nil {
                completion(nil,"90")
                print("error=\(String(describing: error))")
                return
            }
            
            do{
                var objetResponse: ObjectRegisterUser
                var objetResponseError: ObjectErrorRegisterUser

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                //print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON REGISTER---- > ")
                print(jsonStr)
                
                if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || jsonStr.contains("<codigoRespuesta>0</codigoRespuesta>")
                {
                    objetResponse = try JSONDecoder().decode(ObjectRegisterUser.self, from: jsonStr.data(using: .utf8)!)
                    completion(objetResponse, nil)
                }else{
                    objetResponseError = try JSONDecoder().decode(ObjectErrorRegisterUser.self, from: jsonStr.data(using: .utf8)!)
                    completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                }
                
            }catch{
                print("Error: ")
                print(error)
            }
        }
    }
}
