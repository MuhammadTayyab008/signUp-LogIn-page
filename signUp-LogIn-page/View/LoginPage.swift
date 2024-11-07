//
//  LoginPage.swift
//  signUp-LogIn-page
//
//  Created by Rashdan Natiq on 2024-11-06.
//

import SwiftUI

struct LoginPage: View {
    @StateObject var viewModel = UserViewModel()
    var body: some View {
        VStack {
            CustomTextField(username: $viewModel.email, placeHolder: "email")
            CustomTextField(username: $viewModel.phoneNumber, placeHolder: "PhoneNumber")
        }
    }
}

#Preview {
    LoginPage()
}
