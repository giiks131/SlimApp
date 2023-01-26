//
//  WorkObjective.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 19/01/23.
//

import Foundation

enum WorkoutObjective: String, Codable, CaseIterable {
    case weightLoss,
         muscleBulking,
         coreStrength,
         bodyToning,
         cardioFitness
}
