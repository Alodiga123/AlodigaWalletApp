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
    
    func showPaymentModeActionSheet(title: String, message: String)  {

            DispatchQueue.main.async {
                
                // 1
                let optionMenu = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
                optionMenu.modalPresentationStyle = .pageSheet
           
            //Add imageview to alert
            let imgViewTitle = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
                imgViewTitle.image = UIImage(named:"error")
            
                optionMenu.view.addSubview(imgViewTitle)
    
                UIApplication.shared.windows.first?.rootViewController?.present(optionMenu, animated: true, completion: nil)
                //optionMenu.addAction(cancelAction)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    optionMenu.dismiss(animated: true, completion: nil)

                }
        }
    
    }
    
}