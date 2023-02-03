//
//  Endpoints.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 19/01/23.
//

import Spidey

extension Endpoint {
    static let newClient = Endpoint(httpMethod: .post, url: "/clients")
    static let signUp = Endpoint(httpMethod: .post, url: "/trainers/signup")
    static let signIn = Endpoint(httpMethod: .post, url: "/trainers/signin")
}
