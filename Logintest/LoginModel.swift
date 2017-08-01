//
//  LoginModel.swift
//  Logintest
//
//  Created by mac on 7/31/17.
//  Copyright © 2017 mac. All rights reserved.
//


import Foundation

class LoginModel: NSObject {
    
    var userName:String
    var password:String
    
    init?(userName:String, password:String,
          userNameValidator:UserNameValidator? = nil,
          passwordValidator:PasswordValidator? = nil) {
        
        let validator1 = userNameValidator ?? UserNameValidator()
        if validator1.validate(userName) == false {
            return nil
        }
        
        let validator2 = passwordValidator ?? PasswordValidator()
        if validator2.validate(password) == false {
            return nil
        }
        
        self.userName = userName
        self.password = password
        
        super.init()
    }
}
