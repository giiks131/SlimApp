//
//  Client.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 19/01/23.
//

import Foundation

struct Client: Decodable, Identifiable {
    let id: UUID
    let name: String
    let avatar: String
    let age: Int
    let bodyMassIndex: Double
    let workoutDays: [Weekday]
    let objectives: [WorkoutObjective]
}

extension Client {
    struct New: Encodable {
        let name: String
        let avatar: String
        let dateOfBirth: Date
        let sex: Sex
        let height: Double
        let weight: Double
        let bodyMassIndex: Double
        let workoutDays: [Weekday]
        let objectives: [WorkoutObjective]
    }
}


// MARK: - Sample data

#if DEBUG
extension Client {
    static let sample = Client(id: UUID(), name: "Antonio Ferraris", avatar: "💪🏽", age: 28, bodyMassIndex: 24.5, workoutDays: [.monday, .wednesday, .friday], objectives: [.cardioFitness, .coreStrength])
}

#endif
