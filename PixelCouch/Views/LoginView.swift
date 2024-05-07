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
        
        ZStack{
            Color.brandBackground.ignoresSafeArea()
            VStack {
                
                Spacer()
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .opacity(0.8)
                    .padding(.vertical, 10)
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .opacity(0.8)
                    .padding(.vertical, 10)
                Button("Sign In") {
                    authManager.signIn(email: email, password: password)
                }
                .padding(10)
                .background(Color.brandAccent)
                .tint(.white)
                .cornerRadius(8)
                
                Spacer()
                
                Button("Create Account") {
                    authManager.signIn(email: email, password: password)
                }
                .padding(10)
                .background(Color.brandMain.opacity(0.5))
                .tint(.white)
                .cornerRadius(8)
                
            }.padding()
        }
    }
}

#Preview {
    LoginView()
}
