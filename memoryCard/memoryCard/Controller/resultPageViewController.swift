//
//  resultPageViewController.swift
//  memoryCard
//
//  Created by XIN on 9/24/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var expectScore: Int?
    
    @IBOutlet weak var ResultScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let score1 = expectScore{
            ResultScore.text = "Your Score: \(score1)"
        }else {
            print ("data didnt transfer")
        }
       
    }

}
