//
//  RegisterView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""

    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "註冊", subtitle: "開始申請帳號流程", angle: 15, background: .orange)
            
            Form {
                TextField("Full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("電子信箱", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("密碼", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                CLButton(
                    title: "創建帳號",
                    background: .green) {
                        // Attemp registration
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
