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
        nameLabel.text = randy.person.name
        birthdayLabel.text = randy.person.birthday
        ageLabel.text = randy.person.age
        jobLabel.text = randy.person.job
        familyStatusLabel.text = randy.person.familyStatus
        kidsLabel.text = randy.person.kids
        
        title = randy.person.name
        
    }
}
