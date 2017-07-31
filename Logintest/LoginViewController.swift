//
//  LoginViewController.swift
//  Logintest
//
//  Created by mac on 7/31/17.
//  Copyright © 2017 mac. All rights reserved.
//
import UIKit
class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func login(_ sender: Any) {
    }
    @IBAction func createAccount(_ sender: Any) {
    }
    @IBAction func userNameDidEndOnExit(_ sender: Any) {
    }
    @IBAction func passwordDidEndOnExit(_ sender: Any) {
    }
}



extension LoginViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        return true }
}
