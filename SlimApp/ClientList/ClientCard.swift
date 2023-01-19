//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    var clientName: String = "Antonio Ferraris"
    var body: some View {
        HStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .frame(width: 61, height: 61, alignment: .center)
                .padding()
                .overlay {
                    Image(systemName: "person.fill")
                        .foregroundColor(.black.opacity(0.2))
                        .font(.system(size: 50))
                }
            VStack(alignment: .leading, spacing: 4) {
                Text(clientName)
                    .font(.title2.bold())
                HStack(spacing: 4) {
                    Text("Muscle")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.horizontal, 8)
                        .background {
                            RoundedRectangle(cornerRadius: 16)
                        }
                    Text("Weight-loss")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.horizontal, 8)
                        .background {
                            RoundedRectangle(cornerRadius: 16)
                        }
                }
            }
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(Color.mainBlack)
                    .frame(width: 80)
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
        .frame(width: 370, height: 100)
        .background(Color.mainTeal)
        .cornerRadius(28)
        .foregroundColor(.white)
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
