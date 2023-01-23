//
//  NewClientView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import SwiftUI

struct NewClientView: View {
    @StateObject var viewModel: NewClientViewModel
    let emojis = ["😀", "😎", "🥰", "😴", "🤔", "🤯"]

    var body: some View {
        NavigationView {
            // TODO: e.grishina rewrite it with ScrollView
            Form {
                Section {
                    TextField("Name", text: $viewModel.name)
                    Picker("Select an avatar", selection: $viewModel.avatar) {
                        ForEach(emojis, id: \.self) { emoji in
                            Text(emoji)
                        }
                    }
                }
                Section {
                    TextField("Select Weight", value: $viewModel.weight, formatter: NumberFormatter())
                        .keyboardType(.numbersAndPunctuation)
                    TextField("Select Weight", value: $viewModel.weight, formatter: NumberFormatter())
                        .keyboardType(.numbersAndPunctuation)
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
