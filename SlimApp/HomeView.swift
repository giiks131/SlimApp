//
//  ContentView.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct HomeView: View {
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
                        //
                    } label: {
                        Image(systemName: "plus")
                    }
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
                    ClientCard()
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
