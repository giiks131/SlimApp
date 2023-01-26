//
//  SignUpView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 25/01/23.
//

import SwiftUI

struct SignUpView: View {

    @ObservedObject var viewModel: SignUpViewModel = SignUpViewModel()

    var body: some View {
        VStack {
            Text("Create an account")
                .font(.title)
                .padding(.bottom, 64)
            TextField(
                "",
                text: $viewModel.email,
                prompt: Text("Email")
                    .foregroundColor(Color(.systemGray))
            )
                .textFieldStyle(BorderedTextFieldStyle())
            TextField(
                "",
                text: $viewModel.name,
                prompt: Text("Name")
                    .foregroundColor(Color(.systemGray))
            )
                .textFieldStyle(BorderedTextFieldStyle())
                .padding([.top])
            SecureField(
                "",
                text: $viewModel.password,
                prompt: Text("Password")
                    .foregroundColor(Color(.systemGray))
            )
                .textFieldStyle(BorderedTextFieldStyle())
                .padding([.vertical])
            Button {
                #warning("Add some action")
            } label: {
                Text("Get started")
            }
            .buttonStyle(LargeButtonStyle())
            .padding(.top)
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
