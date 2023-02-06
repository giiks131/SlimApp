//
//  ClientListViewModel.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 06/02/23.
//

import Foundation

final class ClientListViewModel: ObservableObject {
    @Published private(set) var clients: [Client] = [Client]()
    @Published var isAddingNewClient = false
    
    func fetchClients() {

    }

}
