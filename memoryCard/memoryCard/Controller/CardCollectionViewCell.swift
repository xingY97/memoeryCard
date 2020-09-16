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
        
        if card.isMatched == true{
            backImageView.alpha = 0
            frontImageView.alpha = 0
            return
        }
        else{
            backImageView.alpha = 1
            frontImageView.alpha = 1
        }
        //show front or back of the cell depends on flip status
        if card.isFlipped == true {
            //show the front image view
            flipUp(speed: 0)
        }
        else {
            //show the back image view
            flipDown(speed: 0, delay: 0)
        }
    }
    //a default flipping durantion time
    func flipUp(speed:TimeInterval = 0.3) {
        
        UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        //set the status of the card
        card?.isFlipped = true
    }
    
    func flipDown(speed:TimeInterval = 0.3, delay:TimeInterval = 0.5) {
        // adding delay time so user get to see the second card being flipped
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay) {
            //flip down animation
            UIView.transition(from: self.frontImageView, to: self.backImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        }
        
        //set the status of the card
        card?.isFlipped = false
    }
    //remove card if is matched
    func remove(){
        //make the image views invisible
        backImageView.alpha = 0
        
        UIView.animate(withDuration: 0.3, delay: 0.5, options: .curveEaseIn, animations: {
            
            self.frontImageView.alpha = 0
            
        }, completion: nil)
    }
}
