//
//  SettingsView.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import SwiftUI

struct SettingsView: View {
    private let user: User
    @EnvironmentObject var viewModel: AuthViewModel
    
    init(user: User) {
        self.user = user
    }
    var body: some View {
        VStack {
            List {
                Section {
                    // user info header
                    HStack {
                        Image("male-profile-photo")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 64, height: 64)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(user.fullname)
                                .font(.body)
                                .fontWeight(.semibold)
                            
                            Text(user.email)
                                .font(.system(size: 14))
                                .accentColor(Color.theme.primararyTextColor)
                                .opacity(0.77)
                        }
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                    .padding(8)
                }
                
                Section("Favorites") {
                    ForEach(SavedLocationViewModel.allCases) { viewModel in
                        NavigationLink {
                            SavedLocationSearchView(config: viewModel)
                        } label: {
                            SavedLocationRowView(viewModel: viewModel, user: user)
                        }
                    }
                }
                Section("Settings") {
                    SettingsRowView(imageName: "bell.circle.fill",
                                    title: "Notifications",
                                    tintColor: Color(.systemPurple)
                    )
                    
                    SettingsRowView(imageName: "creditcard.circle.fill",
                                    title: "Payment Methods",
                                    tintColor: Color(.systemBlue)
                    )
                }
                Section("Account") {
                    SettingsRowView(imageName: "dollarsign.circle.fill",
                                    title: "Make money driving",
                                    tintColor: Color(.systemGreen)
                    )
                    
                    SettingsRowView(imageName: "arrow.left.circle.fill",
                                    title: "Sign Out",
                                    tintColor: Color(.systemRed)
                    )
                    .onTapGesture {
                        viewModel.signOut()
                    }
                }
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView(user: dev.mockUser)
        }
    }
}
