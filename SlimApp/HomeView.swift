//
//  ContentView.swift
//  SlimApp
//
//  Created by Aleksandr Shapovalov on 10/01/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            NavigationView {
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

//            Text("Clients")
//                .font(.system(size: 34, weight: .bold))
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .padding(.horizontal, 20)


//            Divider()

            ForEach(0 ..< 5) { item in
                VStack(spacing: 20) {
                    ClientCard()
                }
                .padding(15)

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
