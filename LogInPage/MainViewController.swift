//
//  ViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 09.05.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUNButton: UIButton!
    @IBOutlet var forgotPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.autocorrectionType = .no
        userNameTF.spellCheckingType = .no
        passwordTF.autocorrectionType = .no
        passwordTF.spellCheckingType = .no
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? LogInViewController else { return }
        logInVC.welcome = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBActions
    
    @IBAction func logInButtonTapped() {
        if userNameTF.text == "User" && passwordTF.text == "Password" {
        } else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUNButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User \u{1F609}")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password \u{1F609}")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK - UIAlertController

extension MainViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

