//
//  NetworkTrainerSignUpService.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 30/01/23.
//

import Spidey

protocol SignUpServiceProtocol {

//    @discardableResult
    func addNew(trainer: Trainer.New) async throws -> Trainer
}

struct SignUpTrainerService: SignUpServiceProtocol {

//    @discardableResult
    func addNew(trainer: Trainer.New) async throws -> Trainer {
        try await NetworkManager()
            .performRequest(endpoint: .newTrainer,
                            authType: .none,
                            payload: trainer,
                            response: Trainer.self)
    }
}
