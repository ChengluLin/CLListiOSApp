//
//  LoginView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "CL List", subtitle: "Get things done", angle: -15, background: .cyan)
//                    .offset(y: -100)
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("電子信箱", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("密碼", text:$viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CLButton(title: "登入",
                             background: .blue,
                             action: {
                        viewModel.login()
                    })
                    .padding()
                }
//                .scrollDisabled(true)
                .frame(height: 300)
//                .offset(y: -100)
                
                // Create Account
                VStack {
                    Text("新用戶?")
                    NavigationLink("建立帳戶",
                                   destination: RegisterView())
                }
                .frame(height: 30)
                .padding(.top, 0)
                
                Spacer()
            }
            .frame(height: 400)
            .onTapGesture {
                self.hideKeyboard()
            }
        }
//        .onTapGesture {
//            self.hideKeyboard()
//
//        }
    }
}

#Preview {
    LoginView()
}


extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
