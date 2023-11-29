//
//  ReelView.swift
//  SlotMachine
//
//  Created by Lexter Tapawan on 28/11/2023.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

#Preview {
    ReelView()
}
