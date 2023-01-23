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
    @Published var height: Double = 0.0
    @Published var weight: Double = 0.0
    @Published var bodyMassIndex: Double = 0.0
    @Published var workoutDays: [Weekday] = []
    @Published var objectives: [WorkoutObjective] = []
    
}
