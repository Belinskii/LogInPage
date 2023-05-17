//
//  LogInViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        welcomeLabel.text = "Добро пожаловать, \(user.person.name)!"
    }
}

