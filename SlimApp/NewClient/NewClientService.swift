//
//  NewClientService.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 19/01/23.
//

import Spidey

protocol NewClientServiceProtocol {
    func addNew(client: Client.New) async throws -> Client
}

struct NewClientService: NewClientServiceProtocol {
    func addNew(client: Client.New) async throws -> Client {
        try await NetworkManager()
            .performRequest(endpoint: .newClient, authType: .none, payload: client, response: Client.self)
    }
}
