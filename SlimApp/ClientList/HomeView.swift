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
                    // MARK: display View with array of clients' cards Data
                }
                .navigationTitle("Clients")
                .toolbar {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $isShowingSheet) {
                    // MARK: View with new client info
                    NewClientView()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
