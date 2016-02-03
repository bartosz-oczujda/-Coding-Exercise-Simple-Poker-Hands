//
//  SetFinder.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 03/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class SetFinder {
    
    func findSet(cards:[Card], length:Int) -> (found:[Card], rest:[Card]) {
        
        var count = 0
        var filtered = [Card]()
        var rest = [Card]()
        
        for card in cards {
            filtered = cards.filter({ $0.rank == card.rank })
            count = filtered.count
            if (count == length) { break }
        }
        
        rest = findRest(cards, cardToExtract: filtered.first!)
        
        return (filtered, rest)
        
    }
    
    private func findRest(fullSet:[Card], cardToExtract:Card) -> [Card]{
        
        return fullSet.filter({ $0.rank != cardToExtract.rank })
        
    }
    
}