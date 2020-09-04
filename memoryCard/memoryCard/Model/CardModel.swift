//
//  CardModel.swift
//  memoryCard
//
//  Created by XIN on 9/3/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import Foundation

class CardModel {
    //this method generates the cards, so it requires a return value
    func getCards() -> [Card] {
        
        // Declare an empty array to store all the cards
        var generatedCards = [Card]()
        
        //randomly generate 8 pairs of cards
        for _ in 1...8 {
            
            //Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            //Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            //add them to the array
            generatedCards += [cardOne, cardTwo]
            
            print(randomNumber)
        }
        
        //randomize the cards within the array
        generatedCards.shuffle()
        
        //return the array
        return generatedCards
    }
    
}
