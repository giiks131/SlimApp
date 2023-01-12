//
//  ClientDetailsView.swift
//  SlimApp
//
//  Created by Antonio Palomba on 11/01/23.
//

import SwiftUI

struct ClientDetailsView: View {
    var body: some View {
        VStack {
            
            Circle()
                .foregroundColor(.gray)
                .frame(width: 200, alignment: .center)
                .overlay {
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                        .font(.custom("sf-arabic", fixedSize: 150))
                }
            
            List {
                Section {
                    Text("Antonio")
                    Text("Ferrari")
                } header: {
                    Text("Name and Surname")
                }
                
                Section {
                    Text("24/08/1992")
                } header: {
                    Text("Date of Birth")
                }
                
                Section {
                    Text("67 Kg")
                } header: {
                    Text("Weight and Height")
                }
                
                Section {
                    Text("Build Muscle")
                    Text("Desired weight : 76 Kg ")
                } header: {
                    Text("Goals")
                }
                
                Section {
                    Text("Lorem ipsum")
                } header: {
                    Text("Diseases")
                }
                
                Section {
                    Text("Lorem ipsum")
                } header: {
                    Text("Notes")
                }
                
                
            }
            .listStyle(.insetGrouped)
        }
        .navigationTitle("Client details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ClientDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ClientDetailsView()
        }
    }
}
