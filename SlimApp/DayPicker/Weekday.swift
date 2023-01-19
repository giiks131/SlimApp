//
//  Weekday.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 11/01/23.
//

import Foundation

enum Weekday: String, Codable, CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    var abbrv: String {
        rawValue.prefix(3).capitalized
    }
}
