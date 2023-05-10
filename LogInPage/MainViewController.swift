//
//  ViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 09.05.2023.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUNButton: UIButton!
    @IBOutlet var forgotPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? LogInViewController else { return }
        logInVC.welcome = userNameTF.text
    }
    
    @IBAction func logInButtonTapped() {
        if userNameTF.text == "User" && passwordTF.text == "Password" {
        } else {
            showErrorAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUNButtonTapped() {
        showForgotAlert(withTitle: "Oops!", andMessage: "Your name is User \u{1F609}")
    }
    @IBAction func forgotPassButtonTapped() {
        showForgotAlert(withTitle: "Oops!", andMessage: "Your password is Password \u{1F609}")
    }
}



// MARK - UIAlertController

extension MainViewController {
    
    private func showErrorAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showForgotAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

