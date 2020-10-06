//
//  GameLevel.swift
//  memoryCard
//
//  Created by XIN on 10/4/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import Foundation

enum GameLevel {
    case easy, medium, hard
    
    var time: Int {
        switch self {
        case .easy:
            return 100
        case .medium:
            return 80
        case .hard:
            return 60
        }
    }
}
