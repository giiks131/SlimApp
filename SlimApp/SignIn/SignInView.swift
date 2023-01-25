//
//  SignInView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 24/01/23.
//

import SwiftUI

struct SignInView: View {

    @ObservedObject var viewModel: SignInViewModel

    var body: some View {
        VStack {
            TextField("", text: $viewModel.email, prompt: Text("Email"))
                .textFieldStyle(BorderedTextFieldStyle())
            SecureField("", text: $viewModel.password, prompt: Text("Password"))
                .textFieldStyle(BorderedTextFieldStyle())
                .padding(.top, 16)
            HStack {
                Text("Don't have an account?")
                    .foregroundColor(.gray)
                Button {
                    #warning("open sign up screen")
                } label: {
                    Text("Sign Up")
                        .bold()
                        .foregroundColor(.blue)
                }
            }
            .padding(.vertical)

            Button {
                viewModel.doSignIn()
            } label: {
                Text("Sign in")
            }
            .buttonStyle(LargeButtonStyle())
            .padding(.top)
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(viewModel: SignInViewModel())
    }
}
