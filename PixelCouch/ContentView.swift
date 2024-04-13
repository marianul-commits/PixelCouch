//
//  ContentView.swift
//  LanPlay
//
//  Created by Marian Nasturica on 25.03.2024.
//

import SwiftUI


struct ContentView: View {
    
    @State private var gameDetails: [GameDetails]?

    
    var body: some View {
        
        ZStack{
            Color(UIColor(resource: .brandMain))
                .ignoresSafeArea()
            
            if let gameDetails = gameDetails {
                        ForEach(gameDetails, id: \.id) { gameDetail in
                            CardView(person: gameDetail.name ?? "Unknown", gameDetails: [gameDetail], gameImage: URL(string: gameDetail.backgroundImage ?? ""))
                        }
            }
        }.task {
            do {
                let fetchedGames = try await getGames()
                self.gameDetails = fetchedGames
                print("game list: ", fetchedGames)
            } catch {
                print("error")
            }
        }

    }
}

#Preview {
    ContentView()
}
