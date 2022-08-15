//
//  ViewController.swift
//  Colours
//
//  Created by Jared Shelby on 11/28/20.
//

import UIKit

// masterColor holds the theme color consistently throughout runtime
public var masterColor = UIColor.systemYellow

class HomeScreenVC: UIViewController {

    // Animation on home screen that shifts color over time
    func setupAnimations() {
        UIView.animate(withDuration: 3, delay: 0,
            animations: {
                self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
                self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            }, completion: nil)
    }
    
    // Helps assist randomColor() not choose the same color twice in a row
    var number2 = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set masterColor and shifting intro screen
        self.view.backgroundColor = masterColor
        setupAnimations()
    }
    
    // Two segues to allow user to press home button on play and help screens
    @IBAction func unwindFromInstructionsVC(unwindSegue: UIStoryboardSegue) {}
    @IBAction func unwindFromPlayVC(unwindSegue: UIStoryboardSegue) {}
    
    // Uses randomColor to shift theme color
    @IBAction func colorShifter(_ sender: Any) {
        randomColor()
        UIView.animate(withDuration: 3, delay: 0,
            animations: {
                self.view.backgroundColor = masterColor
            }, completion: nil)
    }
    
    // Selects a random color and stores it in masterColor to be used across VCs
    func randomColor() {
        var number = Int.random(in: 0...5)
        while (number == number2) {
            number = Int.random(in: 0...5)
        }
        number2 = number
        if (number2 == 0) {
            masterColor = UIColor.systemPink
        }
        else if (number2 == 1) {
            masterColor = UIColor.systemOrange
        }
        else if (number2 == 2) {
            masterColor = UIColor.systemYellow
        }
        else if (number2 == 3) {
            masterColor = UIColor.systemGreen
        }
        else if (number2 == 4) {
            masterColor = UIColor.systemIndigo
        }
        else if (number2 == 5) {
            masterColor = UIColor.systemPurple
        }
    }
}
