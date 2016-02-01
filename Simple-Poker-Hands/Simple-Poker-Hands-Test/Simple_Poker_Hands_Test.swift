//
//  Simple_Poker_Hands_Test.swift
//  Simple-Poker-Hands-Test
//
//  Created by Bartosz Oczujda on 31/01/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import XCTest
import Foundation

class Simple_Poker_Hands_Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func findPairTest(){
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Spades),
        ]
        let pairProcessor = PairProcessor()
        XCTAssertTrue(pairProcessor.process(cards))
    }
}
