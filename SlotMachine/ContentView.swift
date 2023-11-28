//
//  ContentView.swift
//  SlotMachine
//
//  Created by Lexter Tapawan on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            // MARK: - BACKGROUND
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .all)
            
            // MARK: - INTERFACE
            
            VStack(alignment: .center, spacing: 5) {
                // MARK: - HEADER
                
                LogoView()
                
                Spacer()
                
                // MARK: - SCORE
                HStack {
                    Text("Your\nCoins".uppercased())
                        .foregroundStyle(Color.white)
                        .font(.system(size: 10, weight: .bold, design: .rounded))
                    
                    Text("100")
                        .foregroundStyle(Color.white)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 3)
                        .layoutPriority(1)
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
                .frame(minWidth: 128)
                .background(
                    Capsule()
                        .foregroundStyle(Color("ColorTransparentBlack"))
                )
                
                // MARK: - SLOT MACHINE
                // MARK: - FOOTER
                
                Spacer()
            }
            // MARK: - BUTTONS
            .overlay(
                // RESET
                Button(action: {
                    print("Reset the game")
                }) {
                    Image(systemName: "arrow.2.circlepath.circle")
                }
                    .modifier(ButtonModifier()),
                alignment: .topLeading
            )
            .overlay(
                // INFO
                Button(action: {
                    print("Info View")
                }) {
                    Image(systemName: "info.circle")
                }
                    .modifier(ButtonModifier()),
                alignment: .topTrailing
            )
            .padding()
            .frame(maxWidth: 720)
            
            // MARK: - POPUP
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
