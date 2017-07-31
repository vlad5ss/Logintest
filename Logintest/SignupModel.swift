//
//  SignupModel.swift
//  Logintest
//
//  Created by mac on 7/31/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
class SignupModel: NSObject {
    var userName:String
    var password:String
    var emailAddress:String
    init?(userName:String, password:String, emailAddress:String)
          {
        self.userName = userName
        self.password = password
        self.emailAddress = emailAddress
        super.init()
    }
}
