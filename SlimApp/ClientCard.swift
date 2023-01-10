//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Antonio Ferrari")
                    .font(.system(size: 24, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .layoutPriority(1)
                Text("Today")
                    .font(.system(size: 18, weight: .regular))
            }
            Divider()
            Image("Topic")
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: 110)
        .background(.purple)
        .foregroundColor(.white)
        .mask(RoundedRectangle(cornerRadius: 25, style: .continuous))
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
