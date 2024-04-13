//
//  NetworkManager.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 03.04.2024.
//

import Foundation
    
    private let apiKey = "c06a12411a5b4c9f9539198d88b1cc63"
    
func getGames() async throws -> [GameDetails] { 
    
    let baseUrl = "https://api.rawg.io/api/games?page=1&page_size=30&key=\(apiKey)"
    
    guard let url = URL(string: baseUrl) else { throw GameError.invalidUrl }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw GameError.invalidResponse }
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    let decoded = try decoder.decode(GameResponse.self, from: data)
    
    return decoded.results
}


enum GameError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}
