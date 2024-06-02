//
//  LoginView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "CL List", subtitle: "Get things done", angle: -15, background: .cyan)
                    .offset(y: -50)
                
                // Login Form
                Form {
                    TextField("電子信箱", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("密碼", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                            Text("Log In")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                .scrollDisabled(true)
                .offset(y: -100)
                
                // Create Account
                VStack {
                    Text("新用戶?")
                    NavigationLink("建立帳戶",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
