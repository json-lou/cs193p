//
//  MemoryGame.swift
//  Memorize
//
//  Created by Jayson Lou on 2020-08-30.
//  Copyright © 2020 Jayson Lou. All rights reserved.
//

import Foundation

// Model

struct MemoryGame<CardContent> {
  var cards: Array<Card>
  
  func choose(card: Card) {
    print("card chosen: \(card)")
  }
  
  init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
    cards = Array<Card>()
    for pairIndex in 0..<numberOfPairsOfCards {
      let content = cardContentFactory(pairIndex)
      cards.append(Card(content: content, id: pairIndex * 2))
      cards.append(Card(content: content, id: pairIndex * 2 + 1))
    }
    cards.shuffle()
  }
  
  struct Card: Identifiable {
    var isFaceUp: Bool = true
    var isMatched: Bool = false
    var content: CardContent
    var id: Int
  }
}
