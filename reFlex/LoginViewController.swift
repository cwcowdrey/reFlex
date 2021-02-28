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
        // Do any additional setup after loading the view.
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
    }
    
    func checkForValidLogin() {
        if usernameTextField.text!.count > 6 && passwordTextField.text!.count > 6 {
            loginButton.backgroundColor = .blue
            canLogin = true
        } else {
            loginButton.backgroundColor = .red
            canLogin = false
        }
    }
    
}

