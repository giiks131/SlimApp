//
//  Button+Style.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 25/01/23.
//

import SwiftUI

struct LargeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color.mainTeal)
            .cornerRadius(16)
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
