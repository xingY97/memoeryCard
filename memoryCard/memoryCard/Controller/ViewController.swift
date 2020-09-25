//
//  ViewController.swift
//  memoryCard
//
//  Created by XIN on 8/27/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import UIKit
var time = 20
var timer1 = Timer()

//grabs the card data from cardModel
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    let model = CardModel()
    var cardsArray = [Card]()
    
    var firstFlippedCardIndex:IndexPath?
    var secondFlippedCardIndex:IndexPath?
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var timer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
        
        //set the view controller as the datasource and delegate of the collection view
        collectionView.delegate = self
        collectionView.dataSource = self
        
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.gameTimer), userInfo: nil, repeats: true)
    
    }
    
    @objc func gameTimer () {
        timer.text = "Time Left: \(String(time))"
    }
    
    // MARK: - Collection View Delegate Methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = (view.frame.width-200)/4
        let height = (view.frame.height)/2
        return CGSize(width: width, height: height)
    }

    //how many items to display returning an Int
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return number of cards
        return cardsArray.count
    }
    //returning whole collectionViewCell object
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //get a cell treat it as CardcollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell

        //return it
        return cell
    }
    //called right before cell displays
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        //reset the state of the cell baed on the properties ofthe card that it represents
        
        let cardCell = cell as? CardCollectionViewCell
        
        //get the card from the card array
        let card = cardsArray[indexPath.row]
        
        //configuring the cell
        cardCell?.configureCell(card: card)
    }
    
    //when user taps the cell
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //get a refrence to the cell that was tapped
        let cell = collectionView.cellForItem(at: indexPath) as? CardCollectionViewCell
        
        //check the status of the card to determine how to flip it
        //only if its not matched, or not flipped, run the code below
        if cell?.card?.isFlipped == false && cell?.card?.isMatched == false {
            
            //flip the card up
            cell?.flipUp()
            
            //check if this is the first card tha was flipped or the second card
            if firstFlippedCardIndex == nil {
                
                //this is the first card flipped over
                firstFlippedCardIndex = indexPath
            }
            else {
                //run the comparing logic
                checkForMatch(secondFlippedCardIndex: indexPath)
            }
        }
        
    }
    // MARK: -Game Logic Methods
    func checkForMatch(secondFlippedCardIndex:IndexPath) {
        
        //Get the two card objects for the two indices and see if they match
        let cardOne = cardsArray[firstFlippedCardIndex!.row]
        let cardTwo = cardsArray[secondFlippedCardIndex.row]
        
        //get the two collection view cells that represent card one and two
        let cardOneCell = collectionView.cellForItem(at: firstFlippedCardIndex!) as? CardCollectionViewCell
        let cardTwoCell = collectionView.cellForItem(at: secondFlippedCardIndex) as? CardCollectionViewCell
        
        //compare two cards
        if cardOne.imageName == cardTwo.imageName{
            //it's a match
            
            //set the status and remove them
            cardOne.isMatched = true
            cardTwo.isMatched = true
            
            cardOneCell?.remove()
            cardTwoCell?.remove()
        }
        else {
            //it's not a match
            //flip back over
            cardOneCell?.flipDown()
            cardTwoCell?.flipDown()
        }
        //Reset the firstFlippedCardIndex property
        firstFlippedCardIndex = nil
    }
}




