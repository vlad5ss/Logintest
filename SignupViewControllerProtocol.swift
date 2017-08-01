//
//  SignupViewControllerProtocol.swift
//  Logintest
//
//  Created by mac on 8/1/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

protocol SignupViewControllerProtocol : class {
    func clearUserNameField()
    func clearPasswordField()
    func clearConfirmPasswordField()
    func enableCancelButton(_ status:Bool)
    func enableCreateButton(_ status:Bool)
    func hideKeyboard()
}
