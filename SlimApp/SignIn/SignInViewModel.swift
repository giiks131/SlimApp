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
        #warning("Do some sign in stuff")
    }
}
