//
//  ContentView.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct ClientList: View {
    @StateObject private var viewModel = ClientListViewModel()

    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                ScrollView {
                    ForEach(viewModel.clients) { client in

                    }
                }
                .navigationTitle("Clients")
                .toolbar {
                    Button {
                        viewModel.isAddingNewClient.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $viewModel.isAddingNewClient) {
                    // MARK: View with new client info
                    NewClientView()
                }
            }
        }
    }
}

struct ClientList_Previews: PreviewProvider {
    static var previews: some View {
        ClientList()
    }
}
