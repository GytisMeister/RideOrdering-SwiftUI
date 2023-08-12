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
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Button {
                    
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
                                         placeholder: "Enter your email address"
                        )
                        
                        CustomInputField(text: $password,
                                         title: "Fullname",
                                         placeholder: "Enter your password",
                                         isSecureField: true
                        )
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        
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
