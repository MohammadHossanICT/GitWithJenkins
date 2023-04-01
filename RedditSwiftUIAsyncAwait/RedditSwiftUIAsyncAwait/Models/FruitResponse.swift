//
//  RedditResponse.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import Foundation

// MARK: - WelcomeElement
struct Fruits: Codable, Identifiable {
    let genus, name: String
    let id: Int
    let family, order: String
    let nutritions: Nutritions
}

// MARK: - Nutritions
struct Nutritions: Codable {
    let carbohydrates, protein, fat: Double
    let calories: Int
    let sugar: Double
}
