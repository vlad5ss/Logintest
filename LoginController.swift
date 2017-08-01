//
//  LoginController.swift
//  Logintest
//
//  Created by mac on 8/1/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

protocol LoginControllerDelegate : class {
    func loginResult(result:Bool)
}

class LoginController : NSObject {
    
    let dummyUsername = "Alibaba"
    let dummyPassword = "Abracadabra"
    
    weak var loginControllerDelegate : LoginControllerDelegate?
    
    init(delegate:LoginControllerDelegate?) {
        self.loginControllerDelegate = delegate
        super.init()
    }
    
    func doLogin(model:LoginModel) {
        
        let userName = model.userName
        let password = model.password
        
        if ((userName.compare(dummyUsername) == .orderedSame) &&
            (password.compare(dummyPassword) == .orderedSame)) {
            loginControllerDelegate?.loginResult(result: true)
            return
        }
        
        loginControllerDelegate?.loginResult(result: false)
    }
    
}
