//
//  GameModel.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 03.04.2024.
//

import Foundation

struct GameResponse: Decodable {
    let results: [GameDetails]
}

struct GameModel: Decodable {
    let id: Int?
    let imageBackground: String?
    let name: String?
    let gamesCount: Int? 
    let yearStart: Int?
    let yearEnd: Int?
    let games: [GameDetails]?
}

struct GameDetails: Decodable {
    let id: Int?
    let name: String?
    let released: String?
    let backgroundImage: String?
    let rating: Double?
    let ratingTop: Int?
    let ratingsCount: Int?
}

struct GamesRandom: Decodable {
    let id: Int?
    let name: String?
    let released: String?
    let backgroundImage: String?
    let rating: Int?
}
