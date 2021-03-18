//
//  Card.swift
//  High Low Tie
//
//  Created by SelectAll on 3/17/21.
//

import Foundation

struct Card {
    let image: String
    let value: Int

    static let clubs: [Card] = [
        Card(image: "AC", value: 1),
        Card(image: "2C", value: 2),
        Card(image: "3C", value: 3),
        Card(image: "4C", value: 4),
        Card(image: "5C", value: 5),
        Card(image: "6C", value: 6),
        Card(image: "7C", value: 7),
        Card(image: "8C", value: 8),
        Card(image: "9C", value: 9),
        Card(image: "TC", value: 10),
        Card(image: "JC", value: 11),
        Card(image: "QC", value: 12),
        Card(image: "KC", value: 13)
    ]

    static let diamonds: [Card] = [
        Card(image: "AD", value: 1),
        Card(image: "2D", value: 2),
        Card(image: "3D", value: 3),
        Card(image: "4D", value: 4),
        Card(image: "5D", value: 5),
        Card(image: "6D", value: 6),
        Card(image: "7D", value: 7),
        Card(image: "8D", value: 8),
        Card(image: "9D", value: 9),
        Card(image: "TD", value: 10),
        Card(image: "JD", value: 11),
        Card(image: "QD", value: 12),
        Card(image: "KD", value: 13)
    ]

    static let hearts: [Card] = [
        Card(image: "AH", value: 1),
        Card(image: "2H", value: 2),
        Card(image: "3H", value: 3),
        Card(image: "4H", value: 4),
        Card(image: "5H", value: 5),
        Card(image: "6H", value: 6),
        Card(image: "7H", value: 7),
        Card(image: "8H", value: 8),
        Card(image: "9H", value: 9),
        Card(image: "TH", value: 10),
        Card(image: "JH", value: 11),
        Card(image: "QH", value: 12),
        Card(image: "KH", value: 13)
    ]

    static let spades: [Card] = [
        Card(image: "AS", value: 1),
        Card(image: "2S", value: 2),
        Card(image: "3S", value: 3),
        Card(image: "4S", value: 4),
        Card(image: "5S", value: 5),
        Card(image: "6S", value: 6),
        Card(image: "7S", value: 7),
        Card(image: "8S", value: 8),
        Card(image: "9S", value: 9),
        Card(image: "TS", value: 10),
        Card(image: "JS", value: 11),
        Card(image: "QS", value: 12),
        Card(image: "KS", value: 13)
    ]

    static let fullDeck: [Card] = clubs + diamonds + hearts + spades

    static func getRandomSuit() -> [Card] {
        return [clubs, diamonds, hearts, spades].randomElement()!
    }

}
