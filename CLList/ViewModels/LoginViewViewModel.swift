//
//  LoginViewViewModel.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        
        // Try log in
        UserDefaults.standard.set(email, forKey: "userEmail")
//        userDefaults.value(forKey: "userEmail")
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "請填寫完整資料"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "請檢查輸入格式是否正確"
            return false
        }
        return true
    }
}
