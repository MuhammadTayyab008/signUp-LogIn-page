//
//  userModel.swift
//  signUp-LogIn-page
//
//  Created by Rashdan Natiq on 2024-11-03.
//

import Foundation

struct UserModel: Identifiable {
    let id = UUID()
    var userName: String
    var fatherName: String
    var phoneNumber: String
    var email: String
}
