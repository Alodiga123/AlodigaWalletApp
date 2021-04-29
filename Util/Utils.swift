//
//  Utils.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/17/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI

public class Utils{

    /**
     * CAPITAL_LETTER: Constant used to detect the existence of a capital letter in a text string
     */
    var CAPITAL_LETTER: String = "(?=.*?[A-Z])";
    /**
     * LOWERCASE_LETTER: Constant used to detect the existence of a lowercase letter in a text string
     */
    var LOWERCASE_LETTER: String = "(?=.*?[a-z])";
    /**
     * NUMBER: Constant used to detect the existence of a number in a text string
     */
    var NUMBER: String = "(?=.*?[0-9])";
    /**
     * SPECIAL_CHARACTER: Constant used to detect the existence of a special character in a text string
     */
    var SPECIAL_CHARACTER: String = "(?=.*?[#?!@$%^&*-])";
    /**
     * NUMBER_OF_CHARACTERS: Constant used to detect the number of characters allowed in a text string
     */
    var  NUMBER_OF_CHARACTERS: String = ".{8,}";
 
    
    func getNivelProgressBar(clave: String) -> CGFloat {
        
          
       /* Pattern capitalLetter = Pattern.compile(CAPITAL_LETTER);
        Matcher capLet = capitalLetter.matcher(newPassword);
        Pattern lowerLetter = Pattern.compile(LOWERCASE_LETTER);
        Matcher lowLet = lowerLetter.matcher(newPassword);
        Pattern number = Pattern.compile(NUMBER);
        Matcher nb = number.matcher(newPassword);
        Pattern specialCharacter = Pattern.compile(SPECIAL_CHARACTER);
        Matcher spChar = specialCharacter.matcher(newPassword);
        Pattern numberCharacters = Pattern.compile(NUMBER_OF_CHARACTERS);
        Matcher nmbChar = numberCharacters.matcher(newPassword);*/
        var  progressIndicator : CGFloat = 0;
        var valores : Array<Bool> = [false,false,false,false,false,false]

        let capLet = try! NSRegularExpression(pattern: CAPITAL_LETTER, options: .caseInsensitive)
        let lowLet = try! NSRegularExpression(pattern: LOWERCASE_LETTER, options: .caseInsensitive)
        let nb = try! NSRegularExpression(pattern: NUMBER, options: .caseInsensitive)
        let spChar = try! NSRegularExpression(pattern: SPECIAL_CHARACTER, options: .caseInsensitive)
        let nmbChar = try! NSRegularExpression(pattern: NUMBER_OF_CHARACTERS, options: .caseInsensitive)


        if(clave != nil)
        {
          
            valores[0] = capLet.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) != nil
            
         
            valores[1] = lowLet.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) != nil
            
            valores[2] = nb.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) != nil
           
            valores[3] = spChar.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) != nil
            
            valores[4] = nmbChar.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) != nil
            
            for val in valores {
                if val == true {
                    progressIndicator += 16.6666667;
                }
            }
  
            return progressIndicator;
        }else
        {
            return 0;
        }
    }
    
    
    func validatePassword(clave: String, confirmPassword:String) -> String
     {
        let capLet = try! NSRegularExpression(pattern: CAPITAL_LETTER, options: .useUnixLineSeparators)
        let lowLet = try! NSRegularExpression(pattern: LOWERCASE_LETTER, options: .caseInsensitive)
        let nb = try! NSRegularExpression(pattern: NUMBER, options: .caseInsensitive)
        let spChar = try! NSRegularExpression(pattern: SPECIAL_CHARACTER, options: .caseInsensitive)
        let nmbChar = try! NSRegularExpression(pattern: NUMBER_OF_CHARACTERS, options: .caseInsensitive)

  
        
        if(capLet.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) == nil)
        
         {
            return NSLocalizedString("validate_password_change_capital_letter", comment: "")
            
        }else if(lowLet.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) == nil)
         {
            return NSLocalizedString("validate_password_change_lowercase_letter", comment: "")

         }else if(nb.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) == nil)
         {
            return NSLocalizedString("validate_password_change_number", comment: "")

         }else if(spChar.firstMatch(in: clave, options: [], range: NSRange(location: 0, length: clave.count)) == nil)
         {
            return NSLocalizedString("validate_password_change_special_character", comment: "")

         }else if(clave.count != 8)
         {
            return NSLocalizedString("validate_password_change_number_characters", comment: "")

         }
        return "0"
     }
    
    
    func getCuenta(cuenta : String) -> String {
     
        return cuenta.prefix(4) + "*********" + String(cuenta.dropFirst(cuenta.count - 4))
    }
    
    
    func isValidEmail(testStr:String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

          let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr.trimmingCharacters(in: NSCharacterSet.whitespaces))
   }
    
    
    
    func isOnlyNumbers(string: String) -> Bool {
        let emailRegEx = "[+]?\\d*"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
      return emailTest.evaluate(with: string.trimmingCharacters(in: NSCharacterSet.whitespaces))   }
    
    func getCodeOperation(data: String, completion: @escaping (_ res:String?, String?) -> Void) {
    
    let client_RU = RegistroUnificadoClient()

        let validarPin = ValidarPin()
        validarPin.cpPin = data
        validarPin.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
        validarPin.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
        validarPin.cpUsuarioId = "379"//Int(Constant.defaults.value(forKey: "usuarioID") as! String)
        
        
        client_RU.opValidarPin(validarPin: validarPin) {(data,error) in
                if error != nil {
                    print("error=\(String(describing: error))")
                    completion(nil,"90")
                    return
                }
                
                do{
                    var objetResponse: ObjectCodeOperationError
                    var objetResponseError: ObjectCodeOperationError

                    let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                    print("datastring " + datastring)
                    let parser = ParseXMLData(xml: datastring)
                    let jsonStr = parser.parseXML()
                    //print("JSON ---- > ")
                    print(jsonStr)
                    
                    if datastring.contains("<codigoRespuesta>00</codigoRespuesta>") || datastring.contains("<codigoRespuesta>0</codigoRespuesta>")
                    {
                        //Constant.defaults.setValue(jsonStr, forKey: "jsonUserByEmail")
                        objetResponse = try JSONDecoder().decode(ObjectCodeOperationError.self, from: jsonStr.data(using: .utf8)!)
                        print(objetResponse.envelope.body.cambiar._return.codigoRespuesta)
                        completion(objetResponse.envelope.body.cambiar._return.codigoRespuesta, nil)
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
                                            "simbolo" : product.simbolo,
                                            "isUsePrepaidCard" : product.isUsePrepaidCard]
                    
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
                                            "simbolo" : product.symbol,
                                            "isUsePrepaidCard" : product.isUsePrepaidCard]
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
            aux.isUsePrepaidCard = product["isUsePrepaidCard"] ?? "false"
            productArray.append(aux)
        }
        return productArray
    }
    
    
    func getKeyEncript(key: String, completion: @escaping (_ res:String?, String?) -> Void) {
    
    let client_RU = RegistroUnificadoClient()

        let dataKey = TestEcnript()
        dataKey.cpUsuarioApi = Constant.WEB_SERVICES_USUARIOWS
        dataKey.cpPasswordApi = Constant.WEB_SERVICES_PASSWORDWS
        dataKey.cpTextValue = key
        
        client_RU.opTestEcnript(testEcnript: dataKey) { (data, error) in
            if error != nil {
                print("error=\(String(describing: error))")
                completion(nil,"90")
                return
            }
            
            do{
                var objetResponse: ObjectKeyEncript

                let datastring = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)! as String
                print("datastring " + datastring)
                let parser = ParseXMLData(xml: datastring)
                let jsonStr = parser.parseXML()
                print("JSON ---- > ")
                print(jsonStr)
          
                    objetResponse = try JSONDecoder().decode(ObjectKeyEncript.self, from: jsonStr.data(using: .utf8)!)
                    //var clave = objetResponse.envelope.body.cambiar._return as String
                    Constant.defaults.setValue(objetResponse.envelope.body.cambiar._return, forKey: "keyaux")
                    completion(objetResponse.envelope.body.cambiar._return, nil)
            
                
            }catch{
                print("Error: ")
                print(error)
            }

        }
        
}

    
    func resetDefaults() {
        let defaults = Constant.defaults
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            print(key)
            defaults.removeObject(forKey: key)
        }
    }
}
