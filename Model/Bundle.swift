//
//  Bundle.swift
//  IOSAlodigaWalletApp
//
//  Created by mac on 10/25/20.
//  Copyright © 2020 Kerwin Gomez. All rights reserved.
//

import Foundation

extension Bundle{
    func decode(_ file: String) -> [Countries] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            //fatalError("Fallando \(file) en el Budle")
            //fatalError("Fallando en el Budle")
            fatalError(file)
        }
        guard let data = try? Data (contentsOf: url) else {
            //fatalError("Fallando al cargar \(file) para el Budle")
            fatalError(file)
        }
        let decoder = JSONDecoder()
   
        guard let loaded = try? decoder.decode([Countries].self, from: data) else {
            //fatalError("Fallando en decoded \(file) para el Budle")
            fatalError(file)
        }
        return loaded
    }
}
