//
//  resultPageViewController.swift
//  memoryCard
//
//  Created by XIN on 9/24/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import Foundation
import UIKit

class ResultPageViewController: UIViewController {
    
    var finalScore: Int?
    
    @IBOutlet weak var resultScore: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        if let score1 = finalScore{
            resultScore.text = "Your Score: \(score1)"
        }else {
            print ("data didnt transfer")
        }
       
    }

    @IBAction func unwindToStart(_ sender: UIStoryboardSegue){
        
    }
}
