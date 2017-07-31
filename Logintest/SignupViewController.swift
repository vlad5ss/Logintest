//
//  SignupViewController.swift
//  Logintest
//
//  Created by mac on 7/31/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
class SignupViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func create(_ sender: Any) {
    }
    @IBAction func cancel(_ sender: Any) {
}

    @IBAction func userNameDidEndOnExit(_ sender: Any) {
    }
    @IBAction func passwordDidEndOnExit(_ sender: Any) {
    }
    @IBAction func confirmPasswordDidEndOnExit(_ sender: Any) {
    }
    @IBAction func emailAddressDidEndOnExit(_ sender: Any) {
    }
}
extension SignupViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        return true }
}
