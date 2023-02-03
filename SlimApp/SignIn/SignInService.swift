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
    /// - Parameters:
    ///   - email: user's email to check on the server, as `String`
    ///   - password: user's password to check on the server as `String`
    ///                     
    /// - Throws: A `RequestError` in case the action fails.
    /// - Returns: The logged in user as an instance of `Trainer`
    func signIn(loginString: String) async throws -> Trainer
}

struct SignInService: SignInServiceProtocol {
    /// Performs a network request to sign in a user into the app.
    /// - Parameters:
    ///   - email: user's email to check on the server, as `String`
    ///   - password: user's password to check on the server as `String`
    ///
    ///   - Throws: A `RequestError` in case the network call fails.
    /// - Returns: The logged in user as an instance of `Trainer`
    func signIn(loginString: String) async throws -> Trainer {
         try await NetworkManager().performRequest(endpoint: .signIn,
                                                         authType: .basic(value: loginString),
                                                         response: Trainer.self)
    }
}
