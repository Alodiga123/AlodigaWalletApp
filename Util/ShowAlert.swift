//
//  ShowAlert.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 10/15/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import SwiftUI
import UIKit

class ShowAlert: UIViewController{
    
   
    var optionMenu = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
    
    
    func showPaymentModeActionSheet(title: String, message: String)  {

            DispatchQueue.main.async {
                
                self.optionMenu = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
      
                self.optionMenu.modalPresentationStyle = .pageSheet
           
            //Add imageview to alert
            let imgViewTitle = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
                imgViewTitle.image = UIImage(named:"error")
            
                self.optionMenu.view.addSubview(imgViewTitle)
                UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: false, completion: {
                    UIApplication.shared.windows.first?.rootViewController?.present(self.optionMenu, animated: true, completion: nil)
                })
             
                 
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.optionMenu.dismiss(animated: true, completion: nil)
                }
        }
    
    }
    
    func alertDismiss()  {
        
        DispatchQueue.main.asyncAfter(deadline: .now()
        + 1) {
            self.optionMenu.dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    func showAlert(title: String, message: String)  {

            DispatchQueue.main.async {
                
                // 1
                let optionMenu = UIAlertController(title: title, message: message, preferredStyle: .alert)
                optionMenu.modalPresentationStyle = .pageSheet
           
                let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) 
            let imgViewTitle = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
                imgViewTitle.image = UIImage(named:"error")
            
                optionMenu.view.addSubview(imgViewTitle)
    
                UIApplication.shared.windows.first?.rootViewController?.present(optionMenu, animated: true, completion: nil)
                optionMenu.addAction(cancelAction)
                
                //DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                  //  optionMenu.dismiss(animated: true, completion: nil)

                //}
        }
    
    }
    
    
}
