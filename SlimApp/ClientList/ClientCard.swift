//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    var name: String = "Antonio Ferrarissssss"
    var nextTraining: String = "Today"
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 24, weight: .bold))
                Text(nextTraining)
                    .font(.system(size: 18, weight: .regular))
            }
            Spacer()
            Divider()
            // MARK: Test image, would be changed on client avatar
            Image("4aces")
                .resizable()
                .scaledToFit()
        }
        .padding()
        .frame(maxHeight: 110)
        .background(.purple)
        .cornerRadius(28)
        .foregroundColor(.white)
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
