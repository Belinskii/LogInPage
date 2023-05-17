//
//  UserViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var familyStatusLabel: UILabel!
    @IBOutlet var kidsLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        photoImage.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.fullname
        birthdayLabel.text = user.person.birthday
        ageLabel.text = user.person.age
        jobLabel.text = user.person.job
        familyStatusLabel.text = user.person.familyStatus
        kidsLabel.text = user.person.kids
        
        title = user.person.name
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        userBioVC.user = user
    }
}
