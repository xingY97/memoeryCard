//
//  ViewController.swift
//  memoryCard
//
//  Created by XIN on 8/27/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import UIKit
//grabs the card data from cardModel
class ViewController: UIViewController {
    
    let model = CardModel()
    var cardsArray = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
    }


}

