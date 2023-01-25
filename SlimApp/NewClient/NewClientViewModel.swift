//
//  NewClientViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import Foundation

final class NewClientViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var avatar: String = ""
    @Published var sex: Sex = .male
    @Published var height: String
    @Published var weight: String
    @Published var bodyMassIndex: Double = 0.0
    @Published var workoutDays: [Weekday] = []
    @Published var objectives: [WorkoutObjective] = []
    var bmiValue: Double {
        let formattedHeight = Double(height)
        let formattedWeight = Double(weight)
        guard formattedHeight != 0 || formattedWeight != 0
        else { return 0 }
        return BMICalculator.calculate(fromHeight: height, weight: weight)
    }
    init(height: String, weight: String) {
        self.height = height
        self.weight = weight
    }
    
}
