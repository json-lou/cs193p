//
//  ContentView.swift
//  Memorize
//
//  Created by Jayson Lou on 2020-08-29.
//  Copyright © 2020 Jayson Lou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  // a View struct must have the property body
  var body: some View {
    HStack {
      ForEach(0..<4) { index in
        CardView(isFaceUp: false)
      }
    }
    .foregroundColor(Color.orange)
    .padding()
    .font(Font.largeTitle)
  }
}

struct CardView: View {
  var isFaceUp: Bool
  var body: some View {
    ZStack {
      if isFaceUp {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke()
        Text("👻")
      } else {
        RoundedRectangle(cornerRadius: 10.0).fill()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
