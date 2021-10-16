//
//  GameplayModel.swift
//  Bullseye
//
//  Created by Shimon Azulay on 28/04/2021.
//

import Foundation

struct GameplayModel {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    var leaderboadrdEntries = [LeaderboardEntry]()
    
    func points(sliderValue: Int) -> Int {
        let diff = abs(target - sliderValue)
        let points = 100 - diff
        return points
    }
    
    mutating func roundFinished(sliderValue: Int) {
        score += points(sliderValue: sliderValue)
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restartGame() {
        leaderboadrdEntries.append(.init(score: score, date: Date()))
        leaderboadrdEntries.sort { $0.score > $1.score }
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
