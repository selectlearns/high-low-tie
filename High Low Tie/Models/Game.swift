//
//  Game.swift
//  High Low Tie
//
//  Created by SelectAll on 3/17/21.
//

import Foundation

struct Game {

    private(set) var currentCardIndex = 0
    private(set) var predictions: [Prediction] = []
    private(set) var score = 0
    private(set) var isOver = false
    private(set) var gameMode: GameMode
    private(set) var records: ScoreRecords

    private let cards: [Card]
    private(set) var validPredictions: [Prediction]

    var predictionCount: Int {
        predictions.count
    }

    var numberOfCards: Int {
        cards.count
    }

    var currentCard: Card {
        cards[currentCardIndex]
    }

    var previousCard: Card? {
        let previousIndex = currentCardIndex - 1
        if previousIndex >= 0 {
            return cards[previousIndex]
        } else {
            return nil
        }
    }
    
    mutating func makePrediction(_ prediction: Prediction) {
        let current = cards[currentCardIndex].value
        let next = cards[currentCardIndex + 1].value
        switch prediction {
        case .lower:
            isOver = current <= next
        case .tied:
            isOver = current != next
        case .higher:
            isOver = current >= next
        }
        if !isOver {
            score += 1
            records.updateRecord(score: score)
        }
        currentCardIndex += 1
        if currentCardIndex == cards.count - 1 {
            isOver = true
        }
    }

    init(mode: GameMode) {
        gameMode = mode
        switch mode {
            case .single:
                cards = Card.getRandomSuit().shuffled()
                validPredictions = [.lower, .higher]
            case .full:
                cards = Card.fullDeck.shuffled()
                validPredictions = [.lower, .tied, .higher]
        }
        records = ScoreRecords(mode: mode)
    }
}
