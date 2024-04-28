//
//  LanPlayApp.swift
//  LanPlay
//
//  Created by Marian Nasturica on 25.03.2024.
//

import SwiftUI
import Firebase

@main

struct PixelCouchApp: App {

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
