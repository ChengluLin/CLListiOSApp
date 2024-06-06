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
                
            }
            .navigationTitle("Profile")
                
        }
    }
}

#Preview {
    ProfileView()
}
