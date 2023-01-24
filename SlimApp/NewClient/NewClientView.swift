//
//  NewClientView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import SwiftUI

struct NewClientView: View {
    @StateObject var viewModel: NewClientViewModel
    @State private var isEditing = false
    let emojis = ["😀", "😎", "🥰", "😴", "🤔", "🤯"]
    let decimalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        formatter.minimum = 0
        return formatter
    }()
    var body: some View {
        NavigationView {
            // TODO: e.grishina rewrite it with ScrollView
            Form {
                Section {
                    TextField("Name", text: $viewModel.name)
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
                    HStack {
                        TextField("0", value: $viewModel.weight, formatter: decimalFormatter, onEditingChanged: { isEditing in
                            self.isEditing = isEditing
                        })
                        .keyboardType(.numbersAndPunctuation)
                    }
                }
                Section("Height (cm)") {
                    HStack {
                        TextField("0", value: $viewModel.height, formatter: decimalFormatter, onEditingChanged: { isEditing in
                            self.isEditing = isEditing
                        })
                        .keyboardType(.numbersAndPunctuation)
                    }
                }
                Section {
                    HStack {
                        Text("BMI")
                        Text((viewModel.weight != 0 && viewModel.height != 0) && isEditing == false ? String(format: "%.2f", viewModel.bmiValue) : "0.0")
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
