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
    
    func testSetFinder(){
        let setFinder = SetFinder()
        
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
        ]
        
        let result = setFinder.findSet(cards, length: 2)
        
        XCTAssertEqual(result.found.count, 2)
        XCTAssertEqual(result.rest.count, 3)
        
    }
    
    func testFindTwoPair_success(){
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
        ]
        
        let twoPairProcessor = TwoPairProcessor()
        XCTAssertTrue(twoPairProcessor.process(cards))
    }
    
    func testFindThree(){
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
        ]
        
        let threeOfAkindProcessor = ThreeOfAKindProcessor()
        
        XCTAssertTrue(threeOfAkindProcessor.process(cards))
        
    }
    
    func testFindFour() {
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
        ]
        
        let fourOfAKindProcessor = FourOfAKindProcessor()
        
        XCTAssertTrue(fourOfAKindProcessor.process(cards))
    }
    
    func testFindPair_success1(){
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
    
    func testFindPair_fail1(){
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.King, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Spades),
        ]
        
        let pairProcessor = PairProcessor()
        XCTAssertFalse(pairProcessor.process(cards))
    }
    
    func testHighCard(){
        let cards = [
            Card(rank: CardRank.Ace, suit: CardSuit.Spades),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
            Card(rank: CardRank.Three, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Spades),
        ]
        
        let highCardProcessor = HighCardProcessor()
        XCTAssertTrue(highCardProcessor.process(cards))
    }
}
