//
//  NewClientView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import SwiftUI

struct NewClientView: View {
    @StateObject private var viewModel: NewClientViewModel = NewClientViewModel()
    let emojis = ["😀", "😎", "🥰", "😴", "🤔", "🤯"]
    var body: some View {
        NavigationView {
            // TODO: e.grishina rewrite it with ScrollView
            Form {
                Section {
                    TextField("Name", text: $viewModel.name)
                    DatePicker("Date of birth", selection: $viewModel.dateOfBirth, displayedComponents: .date)
                    Picker("Select sex", selection: $viewModel.sex) {
                        ForEach(Sex.allCases, id: \.self) { sex in
                            Text(sex.rawValue)
                        }
                    }
                    Picker("Select an avatar", selection: $viewModel.avatar) {
                        ForEach(emojis, id: \.self) { emoji in
                            Text(emoji)
                        }
                    }
                }
                Section("Weight (kg)") {
                    TextField("0", text: $viewModel.weight)
                        .keyboardType(.numbersAndPunctuation)
                }
                Section("Height (cm)") {
                    TextField("0", text: $viewModel.height)
                        .keyboardType(.numbersAndPunctuation)
                }
                Section {
                    HStack {
                        Text("BMI")
                        Text("\(viewModel.bmiValue)")
                    }
                }
                Section {
                    Picker("Select a goal", selection: $viewModel.objectives) {
                        ForEach(WorkoutObjective.allCases, id: \.self) { goal in
                            Text(goal.rawValue)
                        }
                    }
                }
                Section {
                    DayPicker(days: $viewModel.workoutDays)
                        .buttonStyle(.borderless)
                        .listRowInsets(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                }
                Button {
                    Task {
                        await viewModel.addClient()
                    }
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
        NewClientView()
    }
}
