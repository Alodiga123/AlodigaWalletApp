//
//  WebServicesCall.swift
//  webServices
//
//  Created by Adira Quintero on 10/5/20.
//  Copyright © 2020 Adira Quintero. All rights reserved.
//

import Foundation

class WebServicesCall{
    /**
        Private Method: Make Soap Connection.
        
        - parameter soapLocation: String.
        - soapAction: String.
        - soapMessage: String.
        - soapVersion: String (1.1 Or 1.2).
        - className: String.
        - completionHandler: Handler.
        - returns: Void.
        */
    public func makeSoapConnection(soapLocation: String, soapAction: String, soapMessage: String,  soapVersion: String, className: String, completionHandler: @escaping (Data?, NSError?) -> Void) {
        
            let url = URL(string: soapLocation)
            var request = URLRequest(url: url!)
        
            let msgLength  = soapMessage.count
            let data = soapMessage.data(using: String.Encoding.utf8, allowLossyConversion: false)
        
            request.httpMethod = "POST"
            request.addValue("text/xml; charset=utf-8", forHTTPHeaderField: "Content-Type")
            request.addValue(String(msgLength), forHTTPHeaderField: "Content-Length")
            // request.addValue(soapAction, forHTTPHeaderField: "SOAPAction")
            request.httpBody = data
            
             // or false

        let session = URLSession.shared

        
        let task = session.dataTask(with: request) {dataresponse, response, errorresponse in

            DispatchQueue.main.async {
            if errorresponse != nil {
                print("error=\(String(describing: errorresponse))")
                completionHandler(nil, errorresponse as NSError?)
                return
            }
            }
            
            //print("response = \(String(describing: response))")
            completionHandler(dataresponse,errorresponse as NSError?)
        }
        task.resume()
    }


}
    



    

