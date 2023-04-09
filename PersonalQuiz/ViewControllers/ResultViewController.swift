//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Александр Полочанин on 6.04.23.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var currentAnswer: [Answer]!
    
    private var catCounter = 0
    private var dogCounter = 0
    private var turtleCounter = 0
    private var rabbitCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        
        
        currentAnswer.forEach { answer in
            switch answer.animal {
            case .dog:
                dogCounter += 1
            case .cat:
                catCounter += 1
            case .rabbit:
                rabbitCounter += 1
            case .turtle:
                turtleCounter += 1
            }
        }
        
        if  catCounter >= 2   {
            animalLabel.text = " Вы - \(Animal.cat.rawValue)"
            descriptionLabel.text = Animal.cat.definition.description
        } else if dogCounter >= 2 {
            animalLabel.text = " Вы - \(Animal.dog.rawValue)"
            descriptionLabel.text = Animal.dog.definition.description
        } else if turtleCounter >= 2 {
            animalLabel.text =  "Вы - \(Animal.turtle.rawValue)"
            descriptionLabel.text = Animal.turtle.definition.description
        } else if rabbitCounter >= 2 {
            animalLabel.text =  "Вы - \(Animal.rabbit.rawValue)"
            descriptionLabel.text = Animal.rabbit.definition.description
        } else {
            animalLabel.text = "🆘"
            descriptionLabel.text = "Попробуйте еще"
        }
    }
    


    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type (of: self)) has been deallocated")
    }
}
