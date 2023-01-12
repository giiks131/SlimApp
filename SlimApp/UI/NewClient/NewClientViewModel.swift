//
//  NewClientViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import Foundation

final class NewClientViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var surname: String = ""
    @Published var email: String = ""
    @Published var phoneNumber: String = ""
    @Published var height: String = ""
    @Published var weight: String = ""
    @Published var notes: String = ""
    @Published var workoutDays: [Weekday] = []
}
