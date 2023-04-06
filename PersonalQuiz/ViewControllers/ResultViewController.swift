//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Александр Полочанин on 6.04.23.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    


    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type (of: self)) has been deallocated")
    }
}
