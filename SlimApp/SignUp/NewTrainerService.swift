//
//  NetworkTrainerSignUpService.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 30/01/23.
//

import Spidey

/// Requirements for services that would like to perform actions to add a new client to a trainer's list.
protocol NewTrainerServiceProtocol {
    /// Performs an action to add a new client to the trainer's list.
    /// - Parameter client: The client to add to the trainer's list,
    ///                     as an instance of `Client.New`.
    /// - Throws: A `RequestError` in case the action fails.
    /// - Returns: The registered client as an instance of `Client`
    @discardableResult
    func addNew(trainer: Trainer.New) async throws -> Trainer
}

struct NewTrainerService: NewTrainerServiceProtocol {
    /// Performs a network request to add a new client to the trainer's list.
    /// - Parameter client: The client to send to the server to add to the trainer's list,
    ///                     as an instance of `Client.New`.
    /// - Throws: A `RequestError` in case the network call fails.
    /// - Returns: The registered client as an instance of `Client`
    @discardableResult
    func addNew(trainer: Trainer.New) async throws -> Trainer {
        try await NetworkManager()
            .performRequest(endpoint: .newTrainer, authType: .none, payload: trainer, response: Trainer.self)
    }
}
