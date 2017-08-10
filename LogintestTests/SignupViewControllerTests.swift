//
//  SignupViewControllerTests.swift
//  Logintest
//
//  Created by mac on 8/8/17.
//  Copyright © 2017 mac. All rights reserved.
//

import XCTest

class SignupViewControllerTests: XCTestCase {
    
    fileprivate let validUserName = "abcdefghij"
    fileprivate let validPassword = "D%io7AFn9Y"
    fileprivate let validEmailAddress = "amishra@asmtechnology.com"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewDidLoad_Calls_PerformInitialSetup_OnViewModel() {
        
        let expectation = self.expectation(description: "expected performInitialViewSetup() to be called")
        
        let signupViewController = SignupViewController()
        
        let viewModel = MockSignupViewModel(view:signupViewController)
        viewModel.performInitialViewSetupExpectation = expectation
        
        signupViewController.viewModel = viewModel
        
        signupViewController.viewDidLoad()
        
        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testUserNameDidEndOnExit_Calls_UserNameDidEndOnExit_OnViewModel() {
        
        let expectation = self.expectation(description: "expected userNameDidEndOnExit() to be called")
        
        let signupViewController = SignupViewController()
        
        let viewModel = MockSignupViewModel(view:signupViewController)
        viewModel.userNameDidEndOnExitExpectation = expectation
        
        signupViewController.viewModel = viewModel
        
        signupViewController.userNameDidEndOnExit(self)
        
        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testEmailAddressDidEndOnExit_Calls_EmailAddressDidEndOnExit_OnViewModel() {
        
        let expectation = self.expectation(description: "expected emailAddressDidEndOnExit() to be called")
        
        let signupViewController = SignupViewController()
        
        let viewModel = MockSignupViewModel(view:signupViewController)
        viewModel.emailAddressDidEndOnExitExpectation = expectation
        
        signupViewController.viewModel = viewModel
        
        signupViewController.emailAddressDidEndOnExit(self)
        
        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    
    
    
    
}
