//
//  Card.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 31/01/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

enum CardSuit {
    case Clubs, Spades, Hearts, Diamonds
}

enum CardRank {
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
}

struct Card {
    let rank: CardRank
    let suit: CardSuit
}