//
//  UserBioViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var userBioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userBioLabel.text = randy.person.bio
    }
}
