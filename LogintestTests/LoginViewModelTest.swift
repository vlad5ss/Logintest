//
//  LoginViewModelTest.swift
//  Logintest
//
//  Created by mac on 8/1/17.
//  Copyright © 2017 mac. All rights reserved.
//

import XCTest


class LoginViewModelTests: XCTestCase {
    fileprivate var mockLoginViewController:MockLoginViewController?
    override func setUp() {
        super.setUp()
        mockLoginViewController = MockLoginViewController()
    }
    override func tearDown() {
        super.tearDown()
    }

    func testInit_ValidView_CopiesViewToIvar() {
        let viewModel = LoginViewModel(view:mockLoginViewController!)
        if let lhs = mockLoginViewController, let rhs = viewModel.view as?
            MockLoginViewController {
            XCTAssertTrue(lhs === rhs)
        }
    }

}

// MARK: initialization tests
extension LoginViewModelTests {
    func testInit_ValidView_InstantiatesObject() {
        let viewModel = LoginViewModel(view:mockLoginViewController!)
        XCTAssertNotNil(viewModel)
    } }
