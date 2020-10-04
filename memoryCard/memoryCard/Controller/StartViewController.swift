//
//  StartViewController.swift
//  memoryCard
//
//  Created by XIN on 10/2/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import UIKit


enum Difficulty{
    case easy
    case medium
    case hard
}
    

class StartViewController: UIViewController {

    @IBOutlet weak var easyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func easyPressed(_ sender: UIButton!) {
        time = 20
        goToGame(difficulty: .easy)
    }
    
    @IBAction func mediumPressed(_ sender: UIButton!) {
        goToGame(difficulty: .medium)
    }
    
    @IBAction func hardPressed(_ sender: UIButton!) {
        goToGame(difficulty: .hard)
    }
    
    
    func goToGame(difficulty: Difficulty ){
        //navigation to game VC
        // send over the diffuculty    gameVC.difficulty = difficulty
        let gameVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(gameVC, animated: true)
        self.present(gameVC, animated: true, completion: nil)
        
    }

}
