//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dave Cameron on 2022-07-14.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
