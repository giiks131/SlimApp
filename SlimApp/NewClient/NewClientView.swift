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
    let decimalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
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
                Section {
                    HStack {
                        Text("Weight (Kg)")
                        TextField("0", value: $viewModel.weight, formatter: decimalFormatter)
                            .keyboardType(.numbersAndPunctuation)
                        Stepper("Insert Weight", value: $viewModel.weight, step: 1)
                            .labelsHidden()
                    }
                    HStack {
                        Text("Height (cm)")
                        TextField("0", value: $viewModel.height, formatter: decimalFormatter)
                            .keyboardType(.numbersAndPunctuation)
                        Stepper("Insert Height", value: $viewModel.height, step: 10)
                            .labelsHidden()
                    }
                    HStack {
                        Text("BMI")
                        TextField("0", value: $viewModel.bodyMassIndex, formatter: decimalFormatter)
                            .keyboardType(.numbersAndPunctuation)
                        Stepper("Insert BMI", value: $viewModel.bodyMassIndex, step: 0.5)
                            .labelsHidden()
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
