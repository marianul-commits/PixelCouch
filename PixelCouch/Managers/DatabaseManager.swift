//
//  DatabaseManager.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 24.04.2024.
//

import Firebase
import SwiftUI

class DatabaseManager: ObservableObject {
    @Published var likedItems: [String] = []
    @Published var dislikedItems: [String] = []
    
    // Functions to interact with Firestore or Realtime Database
}
