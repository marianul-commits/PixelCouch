//
//  LoginView.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 28.04.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Sign In") {
                authManager.signIn(email: email, password: password)
            }
            .padding(10)
            .background(Color.gray.opacity(0.5))
            .cornerRadius(20)
            Button("Sign Up") {
                authManager.signUp(email: email, password: password)
            }
            .padding(10)
            .background(Color.gray.opacity(0.5))
            .cornerRadius(20)
        }.padding()
    }
}

#Preview {
    LoginView()
}
