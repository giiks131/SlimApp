//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    var name: String = "Antonio Ferrari"
    var nextTraining: String = "Today"

    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 8) {
                    Text(name)
                        .font(.system(size: 24, weight: .bold))
                Text(nextTraining)
                    .font(.system(size: 18, weight: .regular))
            }

            Spacer()

            Divider()

            Image("4aces")
                .resizable()
                .scaledToFit()
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: 110)
        .background(.purple)
        .foregroundColor(.white)
        .mask(RoundedRectangle(cornerRadius: 28, style: .continuous))
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
