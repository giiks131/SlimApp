//
//  KeychainManager.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 01/02/23.
//

import Foundation
import KeychainAccess

enum KeychainManager {
    static let keychain = Keychain(service: "slimapp")

    /// Retrieves data stored under a key.
    /// - Parameter key: The key for the data to be retrieved.
    /// - Returns: The data stored under the key decoded into its type.
    static func load<T>(key: KeychainKey) throws -> T where T: Decodable {
        guard let data = try? keychain.getData(key.rawValue)
        else { throw KeychainError.failedToLoadData(key: key.rawValue) }
        let decoded = try JSONDecoder().decode(T.self, from: data)
        return decoded
    }

    /// Saves data to the keychain as JSON.
    /// - Parameters:
    ///   - key: The key underwhich to store data.
    ///   - data: The data to store.
    static func save<T>(key: KeychainKey, data: T) throws where T: Encodable {
        guard let data = try? JSONEncoder().encode(data)
        else { throw KeychainError.failedToSaveData(key: key.rawValue) }
        keychain[data: key.rawValue] = data
    }

    /// Removes data stored under a key in the keychain.
    /// - Parameter key: The key under which the data is stored.
    static func delete(key: KeychainKey) throws {
        try keychain.remove(key.rawValue)
    }

    enum KeychainKey: String {
        case trainer
    }

    enum KeychainError: Error {
        case failedToLoadData(key: String),
             failedToSaveData(key: String)
    }
}
