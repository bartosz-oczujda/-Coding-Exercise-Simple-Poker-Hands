//
//  ThreeOfAKindProcessor.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 03/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class ThreeOfAKindProcessor: HandProcessor {
    
    func process(cards: [Card]) -> Bool {
        
        let count = 3
        let setFinder = SetFinder()
        let result = setFinder.findSet(cards, length: count)
        
        return count == result.found.count
        
    }
    
}