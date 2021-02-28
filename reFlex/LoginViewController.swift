//
//  LoginViewController.swift
//  reFlex
//
//  Created by Christopher Cowdrey on 12/25/20.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    
}

