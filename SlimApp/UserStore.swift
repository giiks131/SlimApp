//
//  UserStore.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 01/02/23.
//

import Foundation

@MainActor
final class UserStore: ObservableObject {
    static let shared = UserStore()

    private init() {}

    @Published private(set) var trainer: Trainer? = try? KeychainManager.load(key: .trainer)
    @Published private(set) var error: KeychainManager.KeychainError?

    func save(_ user: Trainer) {
        do {
            try KeychainManager.save(key: .trainer, data: user)
            trainer = user
        } catch {
            self.error = error as? KeychainManager.KeychainError
        }
    }

    func deleteUser() {
        do {
            try KeychainManager.delete(key: .trainer)
            trainer = nil
        } catch {
            self.error = error as? KeychainManager.KeychainError
        }
    }
}
