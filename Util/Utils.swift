//
//  Utils.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 11/17/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

public class Utils{
    
    func isValidEmail(testStr:String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

          let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
          return emailTest.evaluate(with: testStr)
   }
}
