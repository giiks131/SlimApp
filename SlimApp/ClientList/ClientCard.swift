//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    var name: String = "Antonio Ferraris"
    var nextTraining: String = "Today"
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .frame(width: 61, height: 61, alignment: .center)
                .padding()
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 24, weight: .bold))
                Text(nextTraining)
                    .font(.system(size: 18, weight: .regular))
            }
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(Color("CustomPaletteBlack"))
                    .frame(width: 70, height: 200, alignment: .trailing)
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Text("12")
                        .font(.title.bold())
                    Text("JAN")
                        .font(.subheadline)
                }
            }
        }
        .frame(maxHeight: 110)
        .background(Color("CustomPaletteTeal"))
        .cornerRadius(28)
        .foregroundColor(.white)
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
