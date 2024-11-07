//
//  signUpPage.swift
//  signUp-LogIn-page
//
//  Created by Rashdan Natiq on 2024-10-31.
//

//import SwiftUI
//
//struct signUpPage: View {
//    @StateObject var viewModel = SignUpViewModel()
//    
//    var body: some View {
//        
//        VStack {
//            Image("rabitImage")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 66, height: 66)
//                .padding(.horizontal, 126)
//            Text("FILL THE FORM FOR SIGNUP")
//                .font(.title2)
//                .fontWeight(.medium)
//                .foregroundColor(.black)
//                .padding(.top, 16)
//            
//            CustomTextField(username: $viewModel.userModel.userName, placeHolder: " userName")
//                .padding(.top, 40)
//            if let error = viewModel.useNameError {
//                Text(error)
//                    .font(.caption)
//                    .foregroundColor(.red)
//            }
//            CustomTextField(username: $viewModel.userModel.fatherName, placeHolder: "fatherName")
//                .padding(.top, 7)
//            if let error = viewModel.fatherNameError{
//                Text(error)
//                    .font(.caption)
//                    .foregroundColor(.red)
//            }
//            
//            CustomTextField(username: $viewModel.userModel.phoneNumber, placeHolder: "phoneNumber")
//                .padding(.top, 7)
//            if let error = viewModel.phoneNumber {
//                Text(error)
//                    .font(.caption)
//                    .foregroundColor(.red)
//            }
//            
//            CustomTextField(username: $viewModel.userModel.email, placeHolder: "email")
//                .padding(.top, 7)
//            if let error = viewModel.emailError {
//                Text(error)
//                    .font(.caption)
//                    .foregroundColor(.red)
//            }
//            
//            CustomButton(title: "Continue", action: {
//                viewModel.textFieldValidation()
//                if viewModel.isFormValid {
//                    print("Form is valid and ready to submit.")
//                }
//            }, isEnabled: viewModel.isFormValid)
//            .padding(.top, 56)
//            .padding(.horizontal, 24)
//        }
//        //            .padding(.horizontal, 36)
//        Spacer()
//    }
//}
//
//#Preview {
//    signUpPage()
//}

import SwiftUI

struct signUpPage: View {
    @StateObject var viewModel = UserViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("rabitImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 66, height: 66)
                    .padding(.horizontal, 126)
                
                Text("FILL THE FORM FOR SIGNUP")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(.top, 16)
                
                CustomTextField(username: $viewModel.userName, placeHolder: "user Name")
                    .padding(.top, 7)
                if let error = viewModel.useNameError {
                    Text(error)
                        .font(.caption)
                        .foregroundColor(.red)
                }
                
                CustomTextField(username: $viewModel.fatherName, placeHolder: "Father's Name")
                    .padding(.top, 7)
                if let error = viewModel.fatherNameError {
                    Text(error)
                        .font(.caption)
                        .foregroundColor(.red)
                }
                
                CustomTextField(username: $viewModel.phoneNumber, placeHolder: "Phone Number")
                    .padding(.top, 7)
                if let error = viewModel.phoneNumberError {
                    Text(error)
                        .font(.caption)
                        .foregroundColor(.red)
                }
                
                CustomTextField(username: $viewModel.email, placeHolder: "Email")
                    .padding(.top, 7)
                if let error = viewModel.emailError {
                    Text(error)
                        .font(.caption)
                        .foregroundColor(.red)
                }
                
                CustomButton(title: "Continue", action: {
                    viewModel.textFieldValidation()
                    if viewModel.isFormValid {
                        print("Form is valid and ready to submit.")
                    }
                })
                .padding(.top, 56)
                .padding(.horizontal, 24)
            }
            .padding(.horizontal, 36)
            Spacer()
        }
    }
}

#Preview {
    signUpPage()
}
