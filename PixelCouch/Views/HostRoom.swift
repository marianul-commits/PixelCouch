//
//  UserRoom.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 07.05.2024.
//

import SwiftUI

struct HostRoom: View {
    
    @State private var userName: String = "testorMaximus"
    @State private var isRoomConnected: Bool = false
    @State private var seed: String = ""
    
    var body: some View {
        ZStack{
            Color.brandBackground.ignoresSafeArea()
        VStack {
            if isRoomConnected {
                Text("Welcome, \(userName)!")
                    .foregroundStyle(.white)
                    .padding()
                
                Text("Room Seed: \(seed)")
                    .foregroundStyle(.white)
                
                // Add additional content for connected users
            } else {
                TextField("Enter Your Name", text: $userName)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 5)
                    .background()
                    .cornerRadius(8.0)
                
                Button(action: {
                    // Generate a random seed
                    seed = generateRandomSeed()
                    // Connect to the room
                    isRoomConnected = true
                }) {
                    Text("Connect to Room")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.brandMain)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
                
                if !seed.isEmpty {
                    Text("No seed provided")
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
        .padding()
    }
    }
}

#Preview {
    HostRoom()
}
