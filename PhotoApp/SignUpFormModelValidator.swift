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
        
    if firstName.count < 2 || firstName.count > 9 {
            returnValue = false
        }
        
        return returnValue
    }
}
