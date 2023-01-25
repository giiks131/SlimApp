//
//  SignInViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 24/01/23.
//

import Foundation

final class SignInViewModel: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""

    func doSignIn() {
        #warning("Do some sign in stuff")
    }
}
