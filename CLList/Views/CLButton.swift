//
//  CLButton.swift
//  CLList
//
//  Created by ChengLu on 2024/6/3.
//

import SwiftUI

struct CLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .buttonStyle(NoHighlightButtonStyle())
        .padding()
    }
}

struct NoHighlightButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(Color.clear) // 背景顏色不變
            .opacity(configuration.isPressed ? 1.0 : 1.0) // 不變透明度
    }
}

#Preview {
    CLButton(title: "Value",
             background: .pink) {
        // Action
    }
}
