//
//  ViewController.swift
//  Quiz
//
//  Created by Stannis Baratheon on 29/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit 

class ViewController: UIViewController {
    
    var currentQuestionIndex: Int!
    var questions: [[String]]!
    
    @IBOutlet weak var lblQuestion: UILabel!
    
    @IBOutlet weak var lblA: UILabel!
    
    @IBOutlet weak var lblB: UILabel!
    
    @IBOutlet weak var lblC: UILabel!
    
    @IBOutlet weak var lblD: UILabel!

    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questions = Array()
        questions.append(["What is 7 + 7?", "14", "15", "16", "17", "A"])
        questions.append(["What is the capital of Spain?", "London", "Paris", "Munich", "Madrid", "D"])
        questions.append(["From what is cider made?", "Oranges", "Apples", "Grapes","Cherries", "B"])
        
        currentQuestionIndex = 0
        let currentQuestionSet = questions[currentQuestionIndex]
        lblQuestion.text = currentQuestionSet[0]
        lblA.text = currentQuestionSet[1]
        lblB.text = currentQuestionSet[2]
        lblC.text = currentQuestionSet[3]
        lblD.text = currentQuestionSet[4]
        lblResult.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerQuestion(_ sender: UIButton) {
        
        let titleOfButton = sender.title(for: UIControlState.normal)
        let currentQuestionSet = questions[currentQuestionIndex]
        if currentQuestionSet[5] == titleOfButton {
            lblResult.text = "Correct!"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Sorry Wrong"
            lblResult.textColor = UIColor.red
        }
        
    }

    
    @IBAction func nextButton(_ sender: UIButton) {
        
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex! += 1
        }
        else {
            currentQuestionIndex = 0
        }
        let currentQuestionSet = questions[currentQuestionIndex]
        lblQuestion.text = currentQuestionSet[0]
        lblA.text = currentQuestionSet[1]
        lblB.text = currentQuestionSet[2]
        lblC.text = currentQuestionSet[3]
        lblD.text = currentQuestionSet[4]
        lblResult.text = ""
        
    }
}

