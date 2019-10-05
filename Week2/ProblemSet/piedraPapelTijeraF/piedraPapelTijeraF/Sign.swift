//
//  Sign.swift
//  piedraPapelTijeraF
//
//  Created by Apple Device 12 on 10/5/19.
//  Copyright © 2019 Diana Arana. All rights reserved.
//

import Foundation
import UIKit
import GameplayKit

enum Sign {
    
    case rock, paper, scissors
    var option: String {
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "🖐🏽"
        case .scissors:
            return "✌🏽"
        }
    }
    
    func compare(computer: Sign) -> GameState {
        if self == computer {
            return GameState.tie
        }
        
        switch self {
        case .rock:
            if computer == .paper{
                return .lose
            }
            else if computer == .scissors{
                return .win
            }
        case .paper:
            if computer == .rock{
                return .win
            }
            else if computer == .scissors{
                return .lose
            }
        case .scissors:
            if computer == .rock{
                return .lose
            }
            else if computer == .paper{
                return .win
            }
            
        }
        return .start
    }
}



let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

