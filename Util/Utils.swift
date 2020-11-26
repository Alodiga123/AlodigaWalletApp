//
//  Utils.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/17/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class Utils{

    
    func getCuenta(cuenta : String) -> String {
     
        return cuenta.prefix(4) + "*********" + String(cuenta.dropFirst(cuenta.count - 4))
    }
    
    
    func isValidEmail(testStr:String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

          let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr.trimmingCharacters(in: NSCharacterSet.whitespaces))
   }
    
    
    func getCodeOperation(data: String, completion: @escaping (_ res:String?, String?) -> Void) {
    
    let client_RU = RegistroUnificadoClient()

        let validarPin = ValidarPin()
        validarPin.cpPin = data
        validarPin.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
        validarPin.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
        validarPin.cpUsuarioId = 379//Int(Constant.defaults.value(forKey: "usuarioID") as! String)
        
        
        client_RU.opValidarPin(pin: data, userId: "379") {(data,error) in
                if error != nil {
                    print("error=\(String(describing: error))")
                    completion(nil,"90")
                    return
                }
                
                do{
                    //var objetResponse: ObjectGetUsuarioByEmail
                    var objetResponseError: ObjectCodeOperationError

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
                        objetResponseError = try JSONDecoder().decode(ObjectCodeOperationError.self, from: jsonStr.data(using: .utf8)!)
                        completion(nil, objetResponseError.envelope.body.cambiar._return.codigoRespuesta)
                    }
                    
                }catch{
                    print("Error: ")
                    print(error)
                }

            }
}
    

    
    func getMessageErrorCodeOperation(code: String) -> String {
        
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
    
    func updateProductsIninitial(products : [ListadoProductos]) {
        var emptyDictionary : Array<Dictionary<String, String>>
        emptyDictionary = []
                for product in products {
                    let currency = ["id" : product.id,
                                            "isPayTopUP" : product.isPayTopUP,
                                            "nombreProducto" : product.nombreProducto,
                                            "saldoActual" : product.saldoActual,
                                            "simbolo" : product.simbolo]
                    
                    emptyDictionary.append(currency)
                }
                
                Constant.defaults.setValue(emptyDictionary, forKey: "ListadoProductos")
    }
    
        
    
    func updateProducts(listProduct: [productTransference]) {
        var emptyDictionary : Array<Dictionary<String, String>>
        emptyDictionary = []
                for product in listProduct {
                    let currency = ["id" : product.id,
                                    "isPayTopUP" : product.isPayTopUp,
                                    "nombreProducto" : product.name,
                                            "saldoActual" : product.currentBalance,
                                            "simbolo" : product.symbol]
                    emptyDictionary.append(currency)
       
                }
        
        Constant.defaults.setValue(emptyDictionary, forKey: "ListadoProductos")
    }
    
    
    func getProductSession() -> [ListadoProductos] {
        var dictionary : [Dictionary<String, String>]
        dictionary = Constant.defaults.value(forKey: "ListadoProductos") as! [Dictionary<String, String>]
        var productArray : [ListadoProductos] = []
        
        for product in dictionary {
            var aux = ListadoProductos()
            aux.id = product["id"] ?? ""
            aux.nombreProducto = product["nombreProducto"] ?? ""
            aux.isPayTopUP = product["isPayTopUP"] ?? ""
            aux.saldoActual = product["saldoActual"] ?? ""
            aux.simbolo = product["simbolo"] ?? ""
            productArray.append(aux)
        }
        return productArray
    }
    
}