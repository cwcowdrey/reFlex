//
//  LoginViewController.swift
//  reFlex
//
//  Created by Christopher Cowdrey on 12/25/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var canLogin = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    
    
    @IBAction func usernameChanged(_ sender: UITextField) {
        checkForValidLogin()
    }
    
    @IBAction func passwordChanged(_ sender: UITextField) {
        checkForValidLogin()
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if canLogin {
            performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
    
    func setupScreen() {
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        loginButton.isEnabled = false
    }
    
    func checkForValidLogin() {
        if usernameTextField.text!.count > 6 && passwordTextField.text!.count > 6 {
            loginButton.backgroundColor = UIColor.init(red: 53/256, green: 144/256, blue: 233/256, alpha: 1)
            loginButton.isEnabled = true
            canLogin = true
        } else {
            loginButton.backgroundColor = UIColor.init(red: 137/256, green: 208/256, blue: 355/256, alpha: 1)
            loginButton.isEnabled = false
            canLogin = false
        }
    }
    
}

