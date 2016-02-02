//
//  HighCardProcessor.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 02/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class HighCardProcessor: HandProcessor {
    
    //High Card means - no hand has been found
    //so we just return true
    func process(cards: [Card]) -> Bool {
        return true
    }
    
}