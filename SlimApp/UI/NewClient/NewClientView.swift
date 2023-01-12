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
                Section("Notes") {
                    TextEditor(text: $viewModel.notes)
                }
            }
            .onTapGesture {
                endEditing()
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
