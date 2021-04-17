//
//  SignUpFormModelValidator.swift
//  PhotoApp
//
//  Created by Özgün Yildiz on 17.04.21.
//

import Foundation

class SignUpFormModelValidator {
    
   func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
    if firstName.count < SignUpConstants.firstNameMinLength || firstName.count > SignUpConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        var returnValue = true
        
        if lastName.count < SignUpConstants.lastNameMinLength || lastName.count > SignUpConstants.lastNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    
    
}
