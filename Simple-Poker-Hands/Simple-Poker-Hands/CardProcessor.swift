//
//  CardProcessor.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 31/01/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

enum Hand: Int {
    case HighCard, OnePair, TwoPair, ThreeOfAKind, Straight, Flush, FullHouse, FourOfAKind, StraightFlush
    
    //needed for looping over enums since there is no default functionality for it
    static func enumerate() -> AnyGenerator<Hand> {
        var nextIndex = HighCard.rawValue
        return anyGenerator { Hand(rawValue: nextIndex++) }
    }
}

class CardProcessor {
    
    func findHand(cards: [Card]) -> String {
        
        //reversing the value so we can loop from 
        //the strongest to the weakest hand
        //and return early if a hand is found
        let hands = Hand.enumerate().reverse()
        
        for hand in hands {
            //loop over all hand processors to find the strongest hand
        }
        
        return ""
    }
    
}