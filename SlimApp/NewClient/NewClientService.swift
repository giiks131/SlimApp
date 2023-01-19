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
