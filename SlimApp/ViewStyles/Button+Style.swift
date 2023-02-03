//
//  Button+Style.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 25/01/23.
//

import SwiftUI

struct LargeButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color.mainTeal)
            .clipShape(Capsule(style: .continuous))
            .opacity(configuration.isPressed ? 0.4 : 1)
            .grayscale(isEnabled ? 0 : 1)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            //
        } label: {
            Text("Some button")
        }
        .buttonStyle(LargeButtonStyle())
        .padding()
    }
}
