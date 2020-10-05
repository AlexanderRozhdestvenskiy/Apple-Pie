//
//  Game.swift
//  Apple Pie
//
//  Created by Alexander Rozhdestvenskiy on 23.07.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessWord += "\(letter)"
            } else {
                guessWord += ""
            }
        }
        return guessWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
        incorrectMovesRemaining -= 1
        }
    }
}
