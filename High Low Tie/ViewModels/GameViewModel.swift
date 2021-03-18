//
//  GameViewModel.swift
//  High Low Tie
//
//  Created by SelectAll on 3/17/21.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published private var game: Game
    
    var currentCard: Card {
        game.currentCard
    }
    
    var previousCard: Card? {
        game.previousCard
    }
    
    var hasPreviousCard: Bool {
        game.currentCardIndex > 0
    }
    
    var validPredictions: [Prediction] {
        game.validPredictions
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    var score: Int {
        game.score
    }
    
    var numberOfCards: Int {
        game.numberOfCards
    }
    
    var remainingCards: Int {
        game.numberOfCards - game.currentCardIndex - 1
    }
    
    var cardNumber: Int {
        game.currentCardIndex + 1
    }
    
    var lastCardImageNames: [String] {
        var cardImages: [String] = []
        if game.currentCardIndex > 0 {
            cardImages.append(game.previousCard!.image)
        }
        cardImages.append(game.currentCard.image)
        return cardImages
    }
    
    var gameMode: GameMode {
        game.gameMode
    }
    
    func makePrediction(_ prediction: Prediction) {
        game.makePrediction(prediction)
    }
    
    init(gameMode: GameMode) {
        game = Game(mode: gameMode)
    }
    
}
