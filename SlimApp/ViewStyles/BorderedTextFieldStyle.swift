//
//  BorderedTextFieldStyle.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 25/01/23.
//

// swiftlint: disable identifier_name

import SwiftUI

struct BorderedTextFieldStyle: TextFieldStyle {

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 24)
            .padding(.vertical)
            .background(Color(UIColor.systemGray6))
            .clipShape(Capsule(style: .continuous))
    }
}
