//
//  NewClientView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 11/01/23.
//

import SwiftUI

struct NewClientView: View {
    
    @StateObject var viewModel: NewClientViewModel
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name", text: $viewModel.name)
                    TextField("Surname", text: $viewModel.surname)
                    TextField("E-mail", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                    TextField("Phone number", text: $viewModel.phoneNumber)
                        .keyboardType(.phonePad)
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
                Section("Notes") {
                    TextEditor(text: $viewModel.notes)
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
