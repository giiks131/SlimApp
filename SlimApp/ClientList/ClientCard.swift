//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    let client: Client
    var body: some View {
        HStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .frame(width: 61, height: 61, alignment: .center)
                .padding()
                .overlay {
                    Text(client.avatar)
                        .foregroundColor(.black.opacity(0.2))
                        .font(.system(size: 40))
                }
            VStack(alignment: .leading, spacing: 4) {
                Text(client.name)
                    .font(.title2.bold())
                Spacer(minLength: 0)
                HStack(spacing: 4) {
                    ForEach(0..<min(2, client.objectives.count)) { index in
                        Text(client.objectives[index].rawValue)
                            .font(.caption)
                            .foregroundColor(.black)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background {
                                RoundedRectangle(cornerRadius: 16)
                            }
                    }

                }
            }
            .padding([.vertical, .trailing])
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
        ClientCard(client: .sample)
    }
}
