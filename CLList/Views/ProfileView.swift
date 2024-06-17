//
//  ProfileView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.blue)
                    .frame(width: 125, height: 125)
                
                // Info: Name, Email, Member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                        Text("Afraz Siddiqui")
                    }
                    HStack {
                        Text("Email: ")
                        Text("Afraz Siddiqui")
                    }
                    HStack {
                        Text("Member Since: ")
                        Text("Afraz Siddiqui")
                    }
                }
                // Sign out
                Button("Log Out") {
                    viewModel.logOut()
                }
                .tint(.red)

                
                
                
                Spacer()
                
            }
            .navigationTitle("Profile")
                
        }
    }
}

#Preview {
    ProfileView()
}
