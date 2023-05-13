//
//  LogInViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""

    let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
    let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(user)!"
    }
}
