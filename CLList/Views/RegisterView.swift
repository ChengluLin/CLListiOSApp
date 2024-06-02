//
//  RegisterView.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "註冊", subtitle: "開始申請帳號流程", angle: 15, background: .orange)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
