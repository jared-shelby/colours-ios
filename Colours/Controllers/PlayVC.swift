//
//  PlayVC.swift
//  Colours
//
//  Created by Jared Shelby on 12/1/20.
//

import UIKit

// bestScore is a global stat that reflects the player's best overall score, tracked even if they exit the app
public var bestScore = 0
// score is public to allow it to be displayed on GameOverVC
public var score = 0

// targetColor is the color that all boxes should be matched to
public var targetColor = UIColor.black

class PlayVC: UIViewController {

    // Variables for the UI elements
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var BestScoreLabel: UILabel!
    @IBOutlet weak var RestartButton: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var TargetColorLabel: UILabel!
    @IBOutlet weak var TimerLabel: UILabel?
    
    // Variables to track current score (score), ensure colors don't repeat when clicking them (number2),  set default color (color), set timer (timer), track time (seconds), track squares turned correct color (colorCounter)
    var number2 = 10
    var color = UIColor.black
    var timer: Timer?
    var seconds = 60
    var colorCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set background color to masterColor and reset the play screen
        self.view.backgroundColor = masterColor
        ResetAction()
        // Stores bestScore for user, even if they exit the app
        let BestScoreDefault = UserDefaults.standard
        if (BestScoreDefault.value(forKey: "BestScore") != nil) {
            bestScore = BestScoreDefault.value(forKey: "BestScore") as! NSInteger
            BestScoreLabel.text = NSString(format: "BEST: %i", bestScore) as String
        }
        // Sets target color for game and starts a timer
        setTargetColor()
        updateTimerLabel()
    }
    
    // Helps manage transition from masterColor to new targetColor
    func setMasterColor() {
        masterColor = targetColor
    }
    
    // Timer
    func updateTimerLabel() {
        TimerLabel?.text = String(format: "%i", seconds)
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                if self.seconds == 0 {
                    self.gameOver()
                } else if self.seconds <= 60 {
                    self.seconds -= 1
                    self.updateTimerLabel()
                }
            }
        }
    }
    
    // Reset timer when ending game through restart button
    @IBAction func RestartBtnTimerReset(_ sender: Any) {
        timer?.invalidate()
        timer = nil
    }
    
    // Reset timer when ending game through home button
    @IBAction func HomeBtnTimerReset(_ sender: Any) {
        timer?.invalidate()
        timer = nil
    }
    
    
    // Resets current score, sets timer back to 0, and changes all buttons back to original state
    func ResetAction() {
        score = 0
        colorCounter = 0
        ScoreLabel.text = NSString(format: "SCORE: %i", score) as String
        timer?.invalidate()
        timer = nil
        seconds = 60
        color = UIColor.black
        setTargetColor()
        updateTimerLabel()
        resetButtons()
    }
    
    // After all buttons are matched to targetColor, they are reset to black and re-enabled
    func resetButtons() {
        color = UIColor.black
        Button1.backgroundColor = color
        Button1.isEnabled = true
        Button2.backgroundColor = color
        Button2.isEnabled = true
        Button3.backgroundColor = color
        Button3.isEnabled = true
        Button4.backgroundColor = color
        Button4.isEnabled = true
        Button5.backgroundColor = color
        Button5.isEnabled = true
        Button6.backgroundColor = color
        Button6.isEnabled = true
        Button7.backgroundColor = color
        Button7.isEnabled = true
        Button8.backgroundColor = color
        Button8.isEnabled = true
        Button9.backgroundColor = color
        Button9.isEnabled = true
    }
    
    // Helps update best score label each time a point is scored
    func checkScore() {
        if (score > bestScore) {
            bestScore = score
            updateScoreLabel()
            
            let BestScoreDefault = UserDefaults.standard
            BestScoreDefault.setValue(bestScore, forKey: "BestScore")
            BestScoreDefault.synchronize()
        }
        
        // Tracks squares that match targetColor and executes a flash animation when all 9 match
        if (colorCounter == 9) {
            colorCounter = 0
            score += 10
            updateScoreLabel()
            setMasterColor()
            UIView.animate(withDuration: 1, delay: 0,
                animations: {
                    self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    self.view.backgroundColor = masterColor
                }, completion: nil)
            // After a complete match, change target color and reset buttons
            setTargetColor()
            resetButtons()
        }
    }
    
    // Helps update score label each time a point is scred
    func updateScoreLabel() {
        ScoreLabel.text = NSString(format: "SCORE: %i", score) as String
    }
    
    // Manages UIButton Button1
    @IBAction func ManageButton1(_ sender: Any) {
        randomColor()
        Button1.backgroundColor = color
        if (color == targetColor) {
            Button1.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
            }
        }
    
    // Manages UIButton Button2
    @IBAction func ManageButton2(_ sender: Any) {
        randomColor()
        Button2.backgroundColor = color
        if (color == targetColor) {
            Button2.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }

    // Manages UIButton Button3
    @IBAction func ManageButton3(_ sender: Any) {
        randomColor()
        Button3.backgroundColor = color
        if (color == targetColor) {
            Button3.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Manages UIButton Button4
    @IBAction func ManageButton4(_ sender: Any) {
        randomColor()
        Button4.backgroundColor = color
        if (color == targetColor) {
            Button4.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Manages UIButton Button5
    @IBAction func ManageButton5(_ sender: Any) {
        randomColor()
        Button5.backgroundColor = color
        if (color == targetColor) {
            Button5.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Manages UIButton Button6
    @IBAction func ManageButton6(_ sender: Any) {
        randomColor()
        Button6.backgroundColor = color
        if (color == targetColor) {
            Button6.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Manages UIButton Button7
    @IBAction func ManageButton7(_ sender: Any) {
        randomColor()
        Button7.backgroundColor = color
        if (color == targetColor) {
            Button7.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Manages UIButton Button8
    @IBAction func ManageButton8(_ sender: Any) {
        randomColor()
        Button8.backgroundColor = color
        if (color == targetColor) {
            Button8.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Manages UIButton Button9
    @IBAction func ManageButton9(_ sender: Any) {
        randomColor()
        Button9.backgroundColor = color
        if (color == targetColor) {
            Button9.isEnabled = false
            score += 1
            colorCounter += 1
            updateScoreLabel()
            checkScore()
        }
    }
    
    // Function to set the target color
    func setTargetColor() {
        randomColor()
        targetColor = color
        TargetColorLabel.backgroundColor = color
    }
    
    // When the game finishes, stop the timer and show the game over screen
    func gameOver() {
        timer?.invalidate()
        timer = nil
        performSegue(withIdentifier: "gameOver", sender: Any?.self)
    }
    
    // Can be called to generate a random color, which is stored in variable "color"
    func randomColor() {
        var number = Int.random(in: 0...5)
        while (number == number2) {
            number = Int.random(in: 0...5)
        }
        number2 = number
        if (number2 == 0) {
            color = UIColor.systemPink
            if (color == masterColor) {
                randomColor()
            }
        }
        else if (number2 == 1) {
            color = UIColor.systemOrange
            if (color == masterColor) {
                randomColor()
            }
        }
        else if (number2 == 2) {
            color = UIColor.systemYellow
            if (color == masterColor) {
                randomColor()
            }
        }
        else if (number2 == 3) {
            color = UIColor.systemGreen
            if (color == masterColor) {
                randomColor()
            }
        }
        else if (number2 == 4) {
            color = UIColor.systemIndigo
            if (color == masterColor) {
                randomColor()
            }
        }
        else if (number2 == 5) {
            color = UIColor.systemPurple
            if (color == masterColor) {
                randomColor()
            }
        }
    }
}
