//
//  TrainerSignInService.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 30/01/23.
//

import Spidey

protocol SignInServiceProtocol {

    func authorize(email: String, password: String) async throws -> Trainer
}

struct SignInService: SignInServiceProtocol {

    func authorize(email: String, password: String) async throws -> Trainer {
        guard let loginString = "\(email):\(password)"
            .data(using: .utf8)?
            .base64EncodedString()
        else {
            fatalError("can't transform into a string")
        }

        return try await NetworkManager().performRequest(endpoint: .signInTrainer, authType: .basic(value: loginString), response: Trainer.self)
    }

}
