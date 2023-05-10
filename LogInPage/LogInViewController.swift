//
//  LogInViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 09.05.2023.
//

import UIKit

final class LogInViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var hiLabel: UILabel!
    
    var welcome: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        hiLabel.text = "\u{1F44B}"
        welcomeLabel.text = "Welcome, " + welcome + "!"
       
    }
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
}
