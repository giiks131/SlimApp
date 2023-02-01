//
//  UserStore.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 01/02/23.
//

import Foundation

final class UserStore: ObservableObject {
    @Published private(set) var trainer: Trainer? = try? KeychainManager.load(key: .trainer)
}
