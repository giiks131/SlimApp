//
//  NetworkTrainerSignUpService.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 30/01/23.
//

import Spidey

/// Requirements for services that would like to perform actions to register the user
protocol SignUpServiceProtocol {
    /// Performs an action to register a new user to the list of registered users.
    /// - Parameter trainer: The user to add to the list of registered users,
    ///                     as an instance of `Trainer.New`.
    /// - Throws: `RequestError` in case the action fails.
    /// - Returns: The registered user as an instance of `Trainer`
    func signUp(trainer: Trainer.New) async throws -> Trainer
}

struct SignUpService: SignUpServiceProtocol {
    /// Performs a network request to add a new user to the list of registered users.
    /// - Parameter trainer: The user to send to the server to add to the list of registered users,
    ///                     as an instance of `Trainer.New`.
    /// - Throws: A `RequestError` in case the network call fails.
    /// - Returns: The registered user as an instance of `Trainer`
    func signUp(trainer: Trainer.New) async throws -> Trainer {
        try await NetworkManager()
            .performRequest(endpoint: .signUp,
                            authType: .none,
                            payload: trainer,
                            response: Trainer.self)
    }
}
