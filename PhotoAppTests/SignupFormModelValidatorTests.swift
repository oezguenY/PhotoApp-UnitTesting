//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Özgün Yildiz on 17.04.21.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignFormModelValidator_WhenValidFirstNameIsProvided_ShouldReturnTrue() {
        
        // Arrange
        let sut = SignUpFormModelValidator()
        
        // Act
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Özgün")

        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameIsValid() should have returned TRUE for a valid first name but returned FALSE")
    }


}
