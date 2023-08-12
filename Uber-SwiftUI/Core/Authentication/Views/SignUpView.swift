//
//  SignUpView.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .imageScale(.medium)
                        .padding()
                }
                
                Text("Create new account")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: 250)
                
                Spacer()
                
                VStack {
                    VStack(spacing: 56) {
                        CustomInputField(text: $fullname,
                                         title: "Fullname",
                                         placeholder: "Enter your name"
                        )
                        
                        CustomInputField(text: $email,
                                         title: "Email Address",
                                         placeholder: "name@example.com"
                        )
                        
                        CustomInputField(text: $password,
                                         title: "Password",
                                         placeholder: "Enter your password",
                                         isSecureField: true
                        )
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        viewModel.registerUser(withEmail: email,
                                               password: password,
                                               fullname: fullname
                        )
                    } label: {
                        HStack {
                            Text("SIGN UP")
                                .foregroundColor(.black)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                        }
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    }
                  
                    .background(Color.white)
                    .cornerRadius(10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
