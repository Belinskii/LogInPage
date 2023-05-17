//
//  UserBioViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import UIKit

class UserBioViewController: UIViewController {
    @IBOutlet var bioTextView: UITextView!
    
var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        bioTextView.text = user.person.bio
    }
}
