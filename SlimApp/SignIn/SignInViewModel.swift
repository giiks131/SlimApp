//
//  SignInViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 24/01/23.
//

import Foundation

final class SignInViewModel: ObservableObject {

    private let service: SignInServiceProtocol

    init(service: SignInServiceProtocol = SignInService()) {
        self.service = service
    }

    @Published var email: String = ""
    @Published var password: String = ""

    func signIn() {
        guard let loginString = "\(email):\(password)"
            .data(using: .utf8)?
            .base64EncodedString()
        else {
            fatalError("can't transform into a string")
        }
        Task {
            let trainer = try await service.signIn(loginString: loginString)
            UserStore.shared.save(trainer)
        }
    }
}
