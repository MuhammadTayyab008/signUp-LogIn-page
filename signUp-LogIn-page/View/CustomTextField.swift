//
//  TextField.swift
//  signUp-LogIn-page
//
//  Created by Rashdan Natiq on 2024-11-03.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var username: String
    var placeHolder: String
    var body: some View {
        TextField(placeHolder, text: $username)
            .padding()
            .frame(width: 230, height: 40, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 13)
                    .stroke(Color.black.opacity(0.4), lineWidth: 1)
            )
    }
}


#Preview {
    CustomTextField(username: .constant("hh"), placeHolder: "bhh")
}

