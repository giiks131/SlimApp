//
//  ClientCard.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientCard: View {
    @State private var showingSheet = false
    var name: String = "Antonio Ferrari"
    var nextTraining: String = "Today"

    var body: some View {
        Button {
            showingSheet.toggle()
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
            .frame(maxWidth: .infinity, maxHeight: 110)
            .background(.purple)
            .foregroundColor(.white)
            .mask(RoundedRectangle(cornerRadius: 28, style: .continuous))
            .sheet(isPresented: $showingSheet) {
                // MARK: Test ModalView, that will show a client info by clicking on ClientCard
                TestModal()
            }
        }
    }
}

struct TestModal: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ClientCard_Previews: PreviewProvider {
    static var previews: some View {
        ClientCard()
    }
}
