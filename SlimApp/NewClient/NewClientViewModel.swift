//
//  NewClientViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import Foundation

final class NewClientViewModel: ObservableObject {

    /// The service for adding a new client to the trainer's list.
    private let service: NewClientServiceProtocol

    init(service: NewClientServiceProtocol = NewClientService()) {
        self.service = service
    }

    @Published var name: String = ""
    @Published var avatar: String = ""
    @Published var sex: Sex = .male
    @Published var height: String = ""
    @Published var weight: String = ""
    @Published var dateOfBirth: Date = Date(timeIntervalSince1970: 1640991600)
    @Published var bodyMassIndex: Double = 0.0
    @Published var workoutDays: [Weekday] = []
    @Published var objectives: [WorkoutObjective] = []

    /// Calculates the BMI based on height and weight inputs.
    var bmiValue: Double {
        guard !height.isEmpty || !weight.isEmpty
        else { return 0 }
        guard let formattedHeight = Double(height),
              let formattedWeight = Double(weight),
              (formattedHeight != 0 || formattedWeight != 0)
        else { return 0 }
        print(formattedHeight, formattedWeight)
        return BMICalculator.calculate(fromHeight: formattedHeight, weight: formattedWeight)
    }

    /// Creates an instance of `Client.New` from the inputs.
    /// - Returns: An instance of `Client.New` that can be added to the trainer's list.
    func makeClient() throws -> Client.New {
        guard let height = Double(height),
              let weight = Double(weight)
        else { throw ClientCreationError.invalidHeightWeight }
        return Client.New(name: name,
                          avatar: avatar,
                          dateOfBirth: dateOfBirth,
                          sex: sex,
                          height: height,
                          weight: weight,
                          bodyMassIndex: bodyMassIndex,
                          workoutDays: workoutDays,
                          objectives: objectives)
    }

    /// Adds the new client to the trainer's list using the service.
    func addClient() {
        do {
            let client = try makeClient()
            Task {
                try await service.addNew(client: client)
            }
        } catch {
            print(error)
        }
    }
}

fileprivate extension NewClientViewModel {
    enum ClientCreationError: Error {
        case invalidHeightWeight
    }
}
