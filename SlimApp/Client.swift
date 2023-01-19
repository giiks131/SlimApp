//
//  Client.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 19/01/23.
//

import Foundation

struct Client: Codable, Identifiable {
    var id: UUID?
    var name: String
    var avatar: String
    var dateOfBirth: Date
    var sex: Sex
    var height: Double
    var weight: Double
    var bodyMassIndex: Double
    var workoutDays: [Weekday]
    var objectives: [WorkoutObjective]
    var trainer: Trainer
}
