//
//  SlimAppApp.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

@main
struct SlimAppApp: App {
    @StateObject private var userStore = UserStore()
    var body: some Scene {
        WindowGroup {
            if userStore.trainer != nil {
                HomeView()
                    .environmentObject(userStore)
            } else {
                SignInView()
            }
        }
    }
}
