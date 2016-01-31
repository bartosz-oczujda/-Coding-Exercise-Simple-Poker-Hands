//
//  HandProcessor.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 31/01/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

protocol HandProcessor {
    func process(cards: [Card]) -> Bool
}