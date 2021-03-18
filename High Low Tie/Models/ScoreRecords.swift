//
//  ScoreRecords.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import Foundation

struct ScoreRecords {
    private(set) var currentRecord: Int
    private let scoreKey: String
    
    mutating func updateRecord(score: Int) {
        if score > currentRecord {
            UserDefaults.standard.set(score, forKey: scoreKey)
            currentRecord = score
        }
    }
    
    init(mode: GameMode) {
        scoreKey = "\(mode.rawValue) Score"
        currentRecord = UserDefaults.standard.integer(forKey: scoreKey)
    }
}
