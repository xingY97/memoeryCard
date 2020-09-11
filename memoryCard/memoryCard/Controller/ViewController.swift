//
//  ViewController.swift
//  memoryCard
//
//  Created by XIN on 8/27/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import UIKit
//grabs the card data from cardModel
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    let model = CardModel()
    var cardsArray = [Card]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
        
        //set the view controller as the datasource and delegate of the collection view
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
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
    
}


