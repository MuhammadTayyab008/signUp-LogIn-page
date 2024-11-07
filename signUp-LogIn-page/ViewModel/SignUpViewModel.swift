//
//  SignUpViewModel.swift
//  signUp-LogIn-page
//
//  Created by Rashdan Natiq on 2024-11-03.
//

//import SwiftUI
//
//class  SignUpViewModel: ObservableObject {
//    @Published var userModel = UserModel(
//    userName: "",
//    fatherName: "",
//    phoneNumber: "",
//    email: ""
//    )
//    
//    @Published var useNameError: String?
//    @Published var fatherNameError: String?
//    @Published var phoneNumber: String?
//    @Published var emailError: String?
//    
//    func textFieldValidation() {
//        useNameError = userModel.userName.isEmpty ? "please enter the user name": nil
//        fatherNameError = userModel.fatherName.isEmpty ? "please enter the user name": nil
//        phoneNumber = userModel.phoneNumber.isEmpty ? "please enter the phoneNumber" : nil
//        emailError = isValidEmail(userModel.email) ?  "please enter the valid email" : nil
//    }
//    
//    private func isValidEmail(_ email: String) -> Bool {
//            let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//            let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailPattern)
//            return emailPredicate.evaluate(with: email)
//        }
//    
//    var isFormValid: Bool {
//        textFieldValidation()
//        return useNameError == nil && fatherNameError == nil && phoneNumber == nil && emailError == nil
//    }
//    
//}

import SwiftUI
import Combine

class UserViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var fatherName: String = ""
    @Published var phoneNumber: String = ""
    @Published var email: String = ""

    @Published var useNameError: String?
    @Published var fatherNameError: String?
    @Published var phoneNumberError: String?
    @Published var emailError: String?

    func textFieldValidation() {
        useNameError = userName.isEmpty ? "Please enter the user name" : nil
        fatherNameError = fatherName.isEmpty ? "Please enter the father's name" : nil
        phoneNumberError = phoneNumber.isEmpty ? "Please enter the phone number" : nil
        emailError = isValidEmail(email) ? nil : "Please enter a valid email"
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailPattern)
        return emailPredicate.evaluate(with: email)
    }
    
    var isFormValid: Bool {
//        textFieldValidation()
        return useNameError == nil && fatherNameError == nil && phoneNumberError == nil && emailError == nil
    }
}


