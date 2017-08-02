//
//  SignupViewController.swift
//  Logintest
//
//  Created by mac on 7/31/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
class SignupViewController: UIViewController {
    
    var viewModel:SignupViewModel?
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.viewModel == nil {
            self.viewModel = SignupViewModel(view: self)
        }
        
        self.viewModel?.performInitialViewSetup()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func create(_ sender: Any) {
         viewModel?.signup(userName: userNameTextField.text, password: passwordTextField.text, emailAddress: emailAddressTextField.text)
    }
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
}

    @IBAction func userNameDidEndOnExit(_ sender: Any) {
        viewModel?.userNameDidEndOnExit()
    }
    @IBAction func passwordDidEndOnExit(_ sender: Any) {
        viewModel?.passwordDidEndOnExit()
    }
    @IBAction func confirmPasswordDidEndOnExit(_ sender: Any) {
         viewModel?.confirmPasswordDidEndOnExit()
    }
    @IBAction func emailAddressDidEndOnExit(_ sender: Any) {
         viewModel?.emailAddressDidEndOnExit()
    }
}


extension SignupViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        if textField == self.userNameTextField {
            self.viewModel?.userNameUpdated(textField.text)
        }
        
        if textField == self.passwordTextField {
            self.viewModel?.passwordUpdated(textField.text)
        }
        
        if textField == self.confirmPasswordTextField {
            self.viewModel?.confirmPasswordUpdated(textField.text)
        }
        
        if textField == self.emailAddressTextField {
            self.viewModel?.emailAddressUpdated(textField.text)
        }
        
        return true
    }
    
}

extension SignupViewController : SignupViewControllerProtocol {
    
    func clearUserNameField() {
        self.userNameTextField.text = ""
    }
    
    func clearPasswordField() {
        self.passwordTextField.text = ""
    }
    
    func clearConfirmPasswordField() {
        self.confirmPasswordTextField.text = ""
    }
    
    
    func enableCancelButton(_ status:Bool) {
        self.cancelButton.isEnabled = status
    }
    
    func enableCreateButton(_ status:Bool) {
        self.createButton.isEnabled = status
    }
    
    func hideKeyboard() {
        self.userNameTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        self.confirmPasswordTextField.resignFirstResponder()
    }
}


