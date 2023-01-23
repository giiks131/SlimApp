//
//  NewClientView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import SwiftUI

struct NewClientView: View {
    @StateObject var viewModel: NewClientViewModel
    @State var choosenAvatar: String = ""
    let emojis = ["😀", "😎", "🥰", "😴", "🤔", "🤯"]

    var body: some View {
        NavigationView {
            // TODO: e.grishina rewrite it with ScrollView
            Form {
                Section {
                    TextField("Name", text: $viewModel.name)
                    Picker("Select an avatar", selection: $choosenAvatar) {
                        ForEach(emojis, id: \.self) { emoji in
                            Text(emoji)
                        }
                        
                    }
                }
                Section {
                    TextField("Height", text: $viewModel.height)
                        .keyboardType(.decimalPad)
                    TextField("Weight", text: $viewModel.weight)
                        .keyboardType(.numberPad)
                }
                Section {
                    DayPicker(days: $viewModel.workoutDays)
                        .buttonStyle(.borderless)
                        .listRowInsets(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                }
                Button {
                    #warning("Implement saving client information")
                } label: {
                    Text("Save")
                        .frame(width: UIScreen.main.bounds.width)
                }
                .buttonStyle(.borderless)
            }
            .navigationTitle("New client")
        }
    }
}

struct NewClientView_Previews: PreviewProvider {
    static var previews: some View {
        NewClientView(viewModel: NewClientViewModel())
    }
}
