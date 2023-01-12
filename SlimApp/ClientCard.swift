//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    @State private var isShowingSheet = false
    var name: String = "Antonio Ferrari"
    var nextTraining: String = "Today"

    var body: some View {
        Button {
            isShowingSheet.toggle()
        } label: {
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(name)
                        .font(.system(size: 24, weight: .bold))
                    Text(nextTraining)
                        .font(.system(size: 18, weight: .regular))
                }

                Spacer()
                Divider()
                //MARK: Test image, would be changed on client avatar
                Image("4aces")
                    .resizable()
                    .scaledToFit()
            }
            .padding(20)
            .frame(maxHeight: 110)
            .background(.purple)
            .cornerRadius(28)
            .foregroundColor(.white)
            .sheet(isPresented: $isShowingSheet) {
                // MARK: open ModalView, that will show a client info by clicking on ClientCard
            }
        }
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
