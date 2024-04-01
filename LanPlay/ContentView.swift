//
//  ContentView.swift
//  LanPlay
//
//  Created by Marian Nasturica on 25.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    private var people: [String] = ["It takes two", "A tale of two sons", "Minecraft", "Mario", "Mario Kart"].reversed()
    
    var body: some View {
        ZStack{
            Color(UIColor(resource: .brandMain))
                .ignoresSafeArea()
            ZStack {
                ForEach(people, id: \.self) { person in
                CardView(person: person)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
