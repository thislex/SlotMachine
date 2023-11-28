//
//  Modifiers.swift
//  SlotMachine
//
//  Created by Lexter Tapawan on 28/11/2023.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 6)
    }
}

struct ButtonModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.title)
            .accentColor(Color.white)
    }
}
