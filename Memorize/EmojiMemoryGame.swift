//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dave Cameron on 2022-07-20.
//

import SwiftUI

// This is the ViewModel
class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚗", "✈️", "🛩", "🚀", "🚁", "🚤", "🛳", "🚞", "⛵️", "🏍", "🚠", "🚃", "🚲", "🚜", "🛵", "🚛", "🚍", "🛶", "🚓", "🚑", "🥃", "🍺", "☕️", "🍷"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
