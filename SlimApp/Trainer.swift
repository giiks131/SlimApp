//
//  Trainer.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 19/01/23.
//

import Foundation

struct Trainer: Codable, Identifiable {
    var id: UUID?
    var name: String
    var email: String
    var password: String
    var clients: [Client]

}
