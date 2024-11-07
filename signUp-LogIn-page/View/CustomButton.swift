//
//  CustomButton.swift
//  signUp-LogIn-page
//
//  Created by Rashdan Natiq on 2024-10-31.
//
// 65 129 166
import SwiftUI

struct CustomButton: View {
    let exampleColor: Color = Color(red: 65/255, green: 129/255, blue: 166/255)
    let title: String
    let action: () -> Void
    var isEnabled: Bool = true
    
    var body: some View {
        Button(action: {
            if isEnabled {
                action()
            }
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 26)
                    .fill(isEnabled ? exampleColor : Color.gray)
                    .frame(width: 342, height: 53)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .disabled(!isEnabled)
    }
}

#Preview {
    CustomButton(title: "Continue", action: {
        print("Button tapped")
    })
}


//import SwiftUI
//
//struct CustomButton: View {
//    let exampleColor: Color = Color(red: 65/255, green: 129/255, blue: 166/255)
//    let title: String
//    let action: () -> Void
//    var isEnabled: Bool = true
//    
//    var body: some View {
//        Button(action: {
//            if isEnabled {
//                action()
//            }
//        }) {
//            Text(title)
//                .frame(width: 342, height: 53, alignment: .center)
//                .foregroundColor(.white)
//                .background(isEnabled ? exampleColor : Color.gray)
//                .cornerRadius(26)
//        }
//        .disabled(!isEnabled)
//    }
//}
//
//
//#Preview {
//    CustomButton(title: "", action: {
//        
//    })
//}
