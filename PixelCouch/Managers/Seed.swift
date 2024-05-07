//
//  Seed.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 16.04.2024.
//

import SwiftUI

    func generateRandomSeed() -> String {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<6).map { _ in characters.randomElement()! })
    }
