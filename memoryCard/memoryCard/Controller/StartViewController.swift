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
    case difficult
}
    

class StartViewController: UIViewController {

    @IBOutlet weak var easyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func easyPressed(_ sender: UIButton!) {
        print("easy pressed")
    }
    
    @IBAction func mediumPressed(_ sender: Any) {
        print("medium pressed")
    }
    
    @IBAction func difficultPressed(_ sender: Any) {
        print("difficult pressed")
    }
    
    
    func goToGame(difficulty: Difficulty ){
        //navigation to game VC
        // send over the diffuculty    gameVC.difficulty = difficulty
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
