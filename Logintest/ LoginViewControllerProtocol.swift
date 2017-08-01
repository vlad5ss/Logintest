//
//   LoginViewControllerProtocol.swift
//  Logintest
//
//  Created by mac on 8/1/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

protocol LoginViewControllerProtocol : class {
    func clearUserNameField()
    func clearPasswordField()
    func enableLoginButton(_ status:Bool)
    func enableCreateAccountButton(_ status:Bool)
    func hideKeyboard()
}
