//
//  KeyboardResponsiveModifier.swift
//  CLList
//
//  Created by ChengLu on 2024/6/18.
//

import Foundation
import SwiftUI

struct KeyboardResponsiveModifier: ViewModifier {
    @StateObject private var keyboardResponder = KeyboardResponder()

    func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardResponder.currentHeight)
            .animation(.easeOut(duration: 0.16))
    }
}

extension View {
    func keyboardResponsive() -> some View {
        self.modifier(KeyboardResponsiveModifier())
    }
}
