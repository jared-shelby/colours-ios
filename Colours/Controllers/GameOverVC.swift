//
//  GameOverVC.swift
//  Colours
//
//  Created by Jared Shelby on 12/6/20.
//

import UIKit

class GameOverVC: UIViewController {

    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var BestScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set background color to masterColor
        self.view.backgroundColor = masterColor
        // Fill in score labels based on score and bestScore vars
        ScoreLabel.text = NSString(format: "SCORE: %i", score) as String
        BestScoreLabel.text = NSString(format: "BEST: %i", bestScore) as String
    }
}
