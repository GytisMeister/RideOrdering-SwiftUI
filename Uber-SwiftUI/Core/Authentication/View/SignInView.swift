//
//  SignInView.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                // Image and Title
                
                VStack(spacing: -16) {
                    // Image
                    Image("uber-app-icon")
                        .resizable()
                        .frame(width: 200, height: 200)
                    // Title
                    Text("UBER")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                
                // Input Fields
                VStack(spacing: 32) {
                    
                    // Input Field 1
                    VStack(alignment: .leading, spacing: 12) {
                        // Title
                        CustomInputField(text: $email,
                                         title: "Email Address",
                                         placeholder: "Emter your email address"
                        )
                    }
                    
                    // Input Field 2
                    
                    VStack(alignment: .leading, spacing: 12) {
                        // Title
                        CustomInputField(text: $password,
                                         title: "Password",
                                         placeholder: "Enter your password",
                                         isSecureField: true
                        )
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.top)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Social Sign In Views
                
                VStack {
                    
                    HStack(spacing: 24) {
                        Rectangle()
                            .frame(width: 76, height: 1)
                            .foregroundColor(.white.opacity(0.5))
                        
                        Text("Sign in with social")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(width: 76, height: 1)
                            .foregroundColor(.white.opacity(0.5))
                    }
                    
                    HStack(spacing: 24) {
                        Button {
                            
                        } label: {
                            Image("facebook-sign-in-icon")
                                .resizable()
                                .frame(width: 44, height: 44)
                        }
                        
                        Button {
                            
                        } label: {
                            Image("google-sign-in-icon")
                                .resizable()
                                .frame(width: 44, height: 44)
                        }
                        
                    }
                }
                .padding(.vertical)
                
                Spacer()
                
                // Sign In button
                Button {
                    
                } label: {
                    HStack {
                        Text("SIGN IN")
                            .foregroundColor(.black)
                        
                        Image(systemName: "arrow.right")
                            .foregroundColor(.black)
                    }
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                }
         
                .background(Color.white)
                .cornerRadius(10)
                
                Spacer()

                // Sign Up button
                
                Button {
                    
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.footnote)
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                }

                
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
