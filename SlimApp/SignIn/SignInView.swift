//
//  SignInView.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 24/01/23.
//

import SwiftUI

struct SignInView: View {

    @StateObject var viewModel: SignInViewModel = SignInViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TextField("", text: $viewModel.email, prompt: Text("Email"))
                    .textFieldStyle(BorderedTextFieldStyle())
                SecureField("", text: $viewModel.password, prompt: Text("Password"))
                    .textFieldStyle(BorderedTextFieldStyle())
                    .padding(.top, 16)
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.gray)
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .bold()
                            .foregroundColor(.blue)
                    }
                }
                .padding(.vertical)
                
                Button {
                    viewModel.signIn()
                } label: {
                    Text("Sign in")
                }
                .buttonStyle(LargeButtonStyle())
                .padding(.top)
            }
            .padding()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
