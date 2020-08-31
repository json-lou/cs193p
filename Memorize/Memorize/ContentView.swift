//
//  ContentView.swift
//  Memorize
//
//  Created by Jayson Lou on 2020-08-29.
//  Copyright © 2020 Jayson Lou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var emojiMemoryGame: EmojiMemoryGame
  
  // a View struct must have the property body
  var body: some View {
    HStack {
      ForEach(emojiMemoryGame.cards) { card in
        CardView(card: card).onTapGesture {
          self.emojiMemoryGame.choose(card: card)
        }
      }
    }
    .foregroundColor(Color.orange)
    .padding()
    .font(Font.largeTitle)
  }
}

struct CardView: View {
  var card: MemoryGame<String>.Card

  var body: some View {
    ZStack {
      if card.isFaceUp {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke()
        Text(card.content)
      } else {
        RoundedRectangle(cornerRadius: 10.0).fill()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(emojiMemoryGame: EmojiMemoryGame())
  }

}
