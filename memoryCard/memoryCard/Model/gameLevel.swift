//
//  gameLevel.swift
//  memoryCard
//
//  Created by XIN on 10/4/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import Foundation

enum GameLevel: String {
    case easy, medium, hard
    
    var gameLevel: Difficulty{
        
        switch difficulty {
        case .easy:
            time = 100
        case .medium:
            time = 80
        case .hard:
            time = 60
        default:
            print("thats it ")
        }
        return difficulty!
    }


}
