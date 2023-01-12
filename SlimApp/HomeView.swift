//
//  ContentView.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingSheet = false

    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                ScrollView {
                    content
                }
                .navigationTitle("Clients")
                .toolbar {
                    Button {
                        // MARK: open a ModalView to create a new client card
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $isShowingSheet) {
                    // MARK: View with new client info
                }
            }
        }
    }
}

extension HomeView {
    var content: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(0 ..< 5) { item in
                VStack(spacing: 15) {
                    NavigationLink {
                        // MARK: open View, that will show a client info by clicking on ClientCard
                    } label: {
                        ClientCard()
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
