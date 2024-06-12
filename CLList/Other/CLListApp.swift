//
//  CLListApp.swift
//  CLList
//
//  Created by ChengLu on 2024/5/29.
//

import SwiftUI
import FirebaseCore

@main
struct CLListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
//            if let userEmail = UserDefaults.standard.value(forKey: "userEmail") {
                MainView()
//            } else {
//                LoginView()
//            }
            
        }
    }
}
