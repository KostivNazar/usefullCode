//
//  User.swift
//  Storin Dat Fire
//
//  Created by Kyle Lee on 12/5/17.
//  Copyright © 2017 Kilo Loco. All rights reserved.
//

import Foundation

protocol Identifiable {
    var id: String? { get set }
}

struct User: Codable, Identifiable {
    var id: String? = nil
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
