//
//  RegisterView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "註冊", subtitle: "開始申請帳號流程", angle: 15, background: .orange)
            
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("電子信箱", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("密碼", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                CLButton(
                    title: "創建帳號",
                    background: .green
                ) {
                    viewModel.register()
                }
            }
            .scrollDisabled(true)
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
