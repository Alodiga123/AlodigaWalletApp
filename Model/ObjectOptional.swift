//
//  ObjectOptional.swift
//  IOSAlodigaWalletApp
//
//  Created by Adira Quintero on 4/14/21.
//  Copyright © 2021 Kerwin Gomez. All rights reserved.
//

import Foundation


struct FailableDecodable<Base : Decodable> : Decodable {

    let base: Base?

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.base = try? container.decode(Base.self)
    }
}



func prue()  {
}


