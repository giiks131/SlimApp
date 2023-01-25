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
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 1)
            )
    }
}
