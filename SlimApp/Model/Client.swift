//
//  Client.swift
//  SlimApp
//
//  Created by Antonio Palomba on 10/01/23.
//

import Foundation

enum Goals {
    case loseWeight, muscleBuildUp, sportPreparation
}

enum WorkoutDays {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

struct Client {
    var name: String
    var surname: String
    var age: Int
    
    var image: String
    
    var height: Double
    var weight: Double
    
    var goals: Goals
    var disease: String
    var notes: String
    var workoutDays: WorkoutDays
}
