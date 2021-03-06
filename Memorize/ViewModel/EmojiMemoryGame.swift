//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Abdug'affor on 12/09/21.
//

import SwiftUI




class EmojiMemoryGame: ObservableObject {
    
    static let emojis  = [
            "π₯", "πͺ", "π₯", "πΏ", "π",
            "π", "βΎοΈ", "π₯", "π", "π±",
            "π", "πΈ", "π", "π", "πͺ",
            "π", "π", "π«", "βοΈ", "πͺ",
            "π", "π¦", "π§", "π«", "π₯’"
        ]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    // MARK: - Intent(s)
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

