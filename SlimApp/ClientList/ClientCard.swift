//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    var name: String = "Antonio Ferraris"
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .frame(width: 61, height: 61, alignment: .center)
                .padding()
                .overlay {
                    Image(systemName: "person.fill")
                        .foregroundColor(.black.opacity(0.2))
                        .font(.system(size: 50))
                }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 24, weight: .bold))
            }
            
            ZStack {
                Rectangle()
                    .foregroundColor(Color("CustomPaletteBlack"))
                    .frame(width: 80, height: 200, alignment: .trailing)
                VStack {
                    HStack(alignment: .lastTextBaseline, spacing: 0) {
                        Text("12")
                            .font(.title.bold())
                        Text("JAN")
                            .font(.subheadline)
                    }
                    Text("16:00")
                        .font(.title3.bold())
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
