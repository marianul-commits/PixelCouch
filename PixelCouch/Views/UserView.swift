//
//  UserView.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 16.04.2024.
//

import SwiftUI

struct UserView: View {
    
    @State private var enteredSeed: String = ""
    @State private var isRoomConnected: Bool = false
    @State private var isConnectedToValidRoom: Bool = false
    @State private var roomName: String = ""
    @State private var userName: String = ""
    @State private var userCount: Int = 1 // Initially set to 1 for the current user
    
    var body: some View {
        VStack {
            Text("Number of Users in Room: \(userCount)")
                .padding()
            
            if isRoomConnected {
                Text("You are connected to room: \(roomName)")
                    .padding()
                
                Text("Welcome, \(userName)!")
                    .padding()
                
                // Add additional content for connected users
            } else {
                TextField("Enter Seed", text: $enteredSeed)
                    .padding()
                
                Button(action: {
                    isConnectedToValidRoom = validateSeed()
                    if isConnectedToValidRoom {
                        // Connect to the room
                        isRoomConnected = true
                        // Increment user count when user joins the room
                        userCount += 1
                    } else {
                        // Show an error message or handle invalid seed
                    }
                }) {
                    Text("Connect to Room")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
    }
    
    // Function to validate the entered seed
    private func validateSeed() -> Bool {
        // Here you can implement your validation logic
        // For example, you can check if the entered seed matches the generated seed
        
        // For demonstration purposes, let's assume the validation is successful
        return true
    }
}

#Preview {
    UserView()
}
