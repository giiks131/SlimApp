//
//  Trainer.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 19/01/23.
//

import Foundation

struct Trainer: Codable {
    let name: String
    let email: String
    let token: String
}

extension Trainer {
    struct New: Encodable {
        let name: String
        let email: String
        let password: String
    }
}
