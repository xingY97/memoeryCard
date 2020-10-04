//
//  startPageView.swift
//  memoryCard
//
//  Created by XIN on 9/24/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import Foundation
import UIKit

class StartPageViewController: UIViewController {
    
    @IBOutlet weak var easyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        easyButton.addTarget(self, action: #selector(easySelected(_:)), for: .touchUpInside)
    }
    
    @objc func easySelected(_ sender: UIButton) {
        print("Easy mode selected")
    }
    @IBAction func easyMode(_ sender: Any) {
        print("Easy mode selected")
    }
    @IBAction func mediumMode(_ sender: Any) {
        print("Medium mode selected")
    }
    @IBAction func difficultMode(_ sender: Any) {
        print("Difficult mode selected")
    }
}

