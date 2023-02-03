//
//  SignUpViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 25/01/23.
//

import Foundation

final class SignUpViewModel: ObservableObject {

    private let service: SignUpServiceProtocol

    init(service: SignUpServiceProtocol = SignUpService()) {
        self.service = service
    }

    @Published var email: String = ""
    @Published var name: String = ""
    @Published var password: String = ""

    func signUp() {
        #warning("Do some sign in stuff")
    }
}
