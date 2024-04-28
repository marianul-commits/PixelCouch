//
//  AuthManager.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 28.04.2024.
//

import SwiftUI
import Firebase

class AuthManager: ObservableObject {
    @Published var isLoggedIn = false
    var userId: String?
    
    func signIn(email: String, password: String) {
        // Firebase authentication signIn logic
    }
    
    func signUp(email: String, password: String) {
        // Firebase authentication signUp logic
    }
    
    func signOut() {
        // Firebase authentication signOut logic
    }
}
