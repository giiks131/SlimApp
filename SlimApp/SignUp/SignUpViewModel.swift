//
//  SignUpViewModel.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 25/01/23.
//

import Foundation

final class SignUpViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var name: String = ""
    @Published var password: String = ""
}
