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
            //            UserView()
            if let gameDetails = gameDetails {
                ForEach(gameDetails, id: \.id) { gameDetail in
                    CardView(gameName: gameDetail.name ?? "Unknown",
                             gameImage: URL(string: gameDetail.backgroundImage ?? ""),
                             gameDetails: [gameDetail])
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
