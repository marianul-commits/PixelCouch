//
//  Seed.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 16.04.2024.
//

import SwiftUI

struct Seed: View {

    @State private var roomName: String = ""
    @State private var userName: String = ""
    @State private var isRoomConnected: Bool = false
    @State private var seed: String = ""
    
    var body: some View {
        VStack {
            if isRoomConnected {
                Text("You are connected to room: \(roomName)")
                    .padding()
                
                Text("Welcome, \(userName)!")
                    .padding()
                
                Text("Room Seed: \(seed)")
                
                // Add additional content for connected users
            } else {
                TextField("Enter Your Name", text: $userName)
                    .padding()
                
                Button(action: {
                    // Generate a random seed
                    seed = generateRandomSeed()
                    
                    // Connect to the room
                    isRoomConnected = true
                }) {
                    Text("Connect to Room")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
//                if !seed.isEmpty {
//                    Text("Room seed: \(seed)")
//                        .padding()
//                }
            }
        }
        .padding()
    }
    
    // Function to generate a random seed
    private func generateRandomSeed() -> String {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<6).map { _ in characters.randomElement()! })
    }
}

#Preview {
    Seed()
}
