//
//  TrainerSignInService.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 30/01/23.
//

import Spidey

/// Requirements for services that would like to perform actions to login the user
protocol SignInServiceProtocol {
    /// Performs an action to add a new client to the trainer's list.
    /// - Parameter client: The client to add to the trainer's list,
    ///                     as an instance of `Client.New`.
    /// - Throws: A `RequestError` in case the action fails.
    /// - Returns: The registered client as an instance of `Client`
    func signIn(email: String, password: String) async throws -> Trainer
}

struct SignInService: SignInServiceProtocol {

    func signIn(email: String, password: String) async throws -> Trainer {
        guard let loginString = "\(email):\(password)"
            .data(using: .utf8)?
            .base64EncodedString()
        else {
            fatalError("can't transform into a string")
        }

        return try await NetworkManager().performRequest(endpoint: .signIn,
                                                         authType: .basic(value: loginString),
                                                         response: Trainer.self)
    }
}
