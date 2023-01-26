//
//  NewClientService.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 19/01/23.
//

import Spidey

/// Requirements for services that would like to perform actions to add a new client to a trainer's list.
protocol NewClientServiceProtocol {
    /// Performs an action to add a new client to the trainer's list.
    /// - Parameter client: The client to add to the trainer's list,
    ///                     as an instance of `Client.New`.
    /// - Throws: A `RequestError` in case the action fails.
    /// - Returns: The registered client as an instance of `Client`
    @discardableResult
    func addNew(client: Client.New) async throws -> Client
}

struct NewClientService: NewClientServiceProtocol {
    /// Performs a network request to add a new client to the trainer's list.
    /// - Parameter client: The client to send to the server to add to the trainer's list,
    ///                     as an instance of `Client.New`.
    /// - Throws: A `RequestError` in case the network call fails.
    /// - Returns: The registered client as an instance of `Client`
    @discardableResult
    func addNew(client: Client.New) async throws -> Client {
        try await NetworkManager()
            .performRequest(endpoint: .newClient, authType: .none, payload: client, response: Client.self)
    }
}
