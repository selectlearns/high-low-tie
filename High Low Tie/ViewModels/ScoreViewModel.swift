//
//  ScoreViewModel.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import Foundation

struct ScoreViewModel {
    let score: Int
    let gameMode: GameMode
    let cardImageNames: [String]
    
    var recordScore: Int {
        ScoreRecords(mode: gameMode).currentRecord
    }
}
