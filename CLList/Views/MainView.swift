//
//  ContentView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/29.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        
        if UserDefaults.standard.value(forKey: "userEmail") != nil {
            accountView
        } else {
            LoginView()
        }
        
//        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
//            accountView
//        } else {
//            LoginView()
//        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
