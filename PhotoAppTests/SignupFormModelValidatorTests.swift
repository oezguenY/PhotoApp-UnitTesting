//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Özgün Yildiz on 17.04.21.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignUpFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignUpFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignFormModelValidator_WhenValidFirstNameIsProvided_ShouldReturnTrue() {
        
        // Arrange
        
        // Act
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Özgün")

        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameIsValid() should have returned TRUE for a valid first name but returned FALSE")
    }
    
    func testSignUpFormModelValidator_WhenTooShortFirstNameIsProvided_ShouldReturnFalse() {
        
        // Arrange
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        // Assert
        // if isFirstNameValid returns False, the test passes. Otherwise, if it is true, the test fails
        XCTAssertFalse(isFirstNameValid, "The isFirstNameIsValid() should have returned FALSE for a first name that is shorter than 2 characters but it has returned true")
    }
    
    
    func testSignUpFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "ÖzgünÖzgün")
        
        XCTAssertFalse(isFirstNameValid, "The isFirstNameIsValid() should have returned FALSE for a first name that is longer than 9 characters but it has returned true")
    }


}
