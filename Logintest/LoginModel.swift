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
    init?(userName:String, password:String){
                 self.userName = userName
        self.password = password
        super.init()
    }
}
