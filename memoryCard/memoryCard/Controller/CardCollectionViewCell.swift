//
//  CardCollectionViewCell.swift
//  memoryCard
//
//  Created by XIN on 9/3/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import UIKit
//custom sub-class of UICollectionViewCell
class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    
    var card: Card?
    
    func configureCell(card:Card) {
        
        //keep track of the card this cell represents
        self.card = card
        
        // set the front image view to the image that represents the card
        frontImageView.image = UIImage(named: card.imageName)
        
        //show front or back of the cell depends on flip status
        if card.isFlipped == true {
            //show the front image view
            flipUp(speed: 0)
        }
        else {
            //show the back image view
            flipDown(speed: 0)
        }
    }
    //a default flipping vaule
    func flipUp(speed:TimeInterval = 0.3) {
        
        UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        //set the status of the card
        card?.isFlipped = true
    }
    
    func flipDown(speed:TimeInterval = 0.3) {
        
        UIView.transition(from: frontImageView, to: backImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        //set the status of the card
        card?.isFlipped = false
    }
}
