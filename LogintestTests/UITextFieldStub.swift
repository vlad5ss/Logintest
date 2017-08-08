//
//  UITextFieldStub.swift
//  Logintest
//
//  Created by mac on 8/8/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class UITextFieldStub : UITextField {
    
    init(text:String) {
        super.init(frame: CGRect.zero)
        super.text = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
