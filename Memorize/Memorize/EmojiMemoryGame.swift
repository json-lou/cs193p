//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jayson Lou on 2020-08-30.
//  Copyright © 2020 Jayson Lou. All rights reserved.
//

import SwiftUI

// ViewModel

// ViewModel should be a class, since it needs to be able to be shared among different Views
class EmojiMemoryGame {
  // anybody can view this var, but only parent class can set this var
  private(set) var game = EmojiMemoryGame.createMemoryGame()
  
  // static func sets the function to the type, not the instance
  static func createMemoryGame() -> MemoryGame<String> {
    let emojis = ["👻", "🎃", "🕷", "🍭", "💀"]
    let randomNumberOfPairs = Int.random(in: 2...emojis.count)
    return MemoryGame<String>(numberOfPairsOfCards: randomNumberOfPairs) { pairIndex in
      return emojis[pairIndex]
    }
  }
  
  // MARK: - Access to the Model
  
  var cards: Array<MemoryGame<String>.Card> {
    game.cards
  }
  
  // MARK: - Intent(s)
  
  func choose(card: MemoryGame<String>.Card) {
    game.choose(card: card)
  }
}
