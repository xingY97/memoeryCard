//
//  StartViewController.swift
//  memoryCard
//
//  Created by XIN on 10/2/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var easyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func easyPressed(_ sender: UIButton!) {
        goToGame(level: .easy)
    }
    
    @IBAction func mediumPressed(_ sender: UIButton!) {
        goToGame(level: .medium)
    }
    
    @IBAction func hardPressed(_ sender: UIButton!) {
        goToGame(level: .hard)
    }
    
    
    func goToGame(level: GameLevel ){
        //navigation to game VC
        // send over the diffuculty    gameVC.difficulty = difficulty
        let gameVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        gameVC.level = level
        self.navigationController?.pushViewController(gameVC, animated: true)
        self.present(gameVC, animated: true, completion: nil)
        
    }

}
