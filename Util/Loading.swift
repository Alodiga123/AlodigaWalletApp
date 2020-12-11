//
//  Loading.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 12/11/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

class Loading: UIViewController{
    
    let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)

    func loadindView() {
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating();

        self.alert.view.addSubview(loadingIndicator)
        
        if alert.presentedViewController == nil {
            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
                  }
                  else {
                      alert.dismiss(animated: false, completion: nil)
                      UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
        }
        
        //UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    func loadingDismiss() {
        DispatchQueue.main.asyncAfter(deadline: .now() ){
            self.alert.dismiss(animated: false, completion: nil)
        }
    }

    
}
