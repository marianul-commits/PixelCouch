//
//  Seed.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 16.04.2024.
//

import SwiftUI
import Combine

class RoomViewModel: ObservableObject {
    @Published var currentRoom: Room?
    @Published var errorMessage: String?
    
    private let userId = UUID().uuidString // In a real app, this would be persistent
    
    func createRoom() {
        let roomId = UUID().uuidString
        let seed = generateSeed()
        let newRoom = Room(id: roomId, hostId: userId, seed: seed, players: [Player(id: userId, name: "Host")])
        
        // In a real app, you'd send this to a server
        currentRoom = newRoom
    }
    
    func joinRoom(withSeed seed: String) {
        // In a real app, you'd validate the seed with a server
        guard validateSeed(seed) else {
            errorMessage = "Invalid seed"
            return
        }
        
        // Simulating finding a room with the given seed
        let foundRoom = Room(id: UUID().uuidString, hostId: "someHostId", seed: seed, players: [Player(id: "someHostId", name: "Host")])
        
        var updatedRoom = foundRoom
        updatedRoom.players.append(Player(id: userId, name: "Guest"))
        
        currentRoom = updatedRoom
    }
    
    private func generateSeed() -> String {
        // Generate a random 6-character alphanumeric string
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<6).map { _ in characters.randomElement()! })
    }
    
    private func validateSeed(_ seed: String) -> Bool {
        // In a real app, you'd check this against existing rooms on a server
        return seed.count == 6 && seed.uppercased() == seed
    }
    
    func isHost() -> Bool {
        return currentRoom?.hostId == userId
    }
}
