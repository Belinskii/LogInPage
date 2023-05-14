//
//  UserViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import UIKit

class UserDataViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var familyStatusLabel: UILabel!
    @IBOutlet var kidsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        nameLabel.text = randyData["Имя"]
        birthdayLabel.text = randyData["День рождения"]
        ageLabel.text = randyData["Возраст"]
        jobLabel.text = randyData["Профессия"]
        familyStatusLabel.text = randyData["Семейное положение"]
        kidsLabel.text = randyData["Дети"]
        
        title = randyData["Имя"]
        
    }
}
