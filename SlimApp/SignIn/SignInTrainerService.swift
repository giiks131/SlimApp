//
//  TrainerSignInService.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 30/01/23.
//

import Spidey

/// Requirements for services that would like to perform actions to login the user
protocol SignInServiceProtocol {
    /// /// Performs an action to sign in a user into the app.
    /// - Parameters email & password: The user's email and password to check on the server,
    ///                     as `String`.
    ///                     
    /// - Throws: A `RequestError` in case the action fails.
    /// - Returns: The logged in user as an instance of `Trainer`
    func signIn(email: String, password: String) async throws -> Trainer
}

struct SignInService: SignInServiceProtocol {
    /// Performs a network request to sign in a user into the app.
    /// - Parameter  email & password: The user's email and password to check on the server,
    ///                     as `String`.
    /// - Throws: A `RequestError` in case the network call fails.
    /// - Returns: The logged in user as an instance of `Trainer`
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
