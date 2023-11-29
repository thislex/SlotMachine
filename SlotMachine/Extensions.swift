//
//  Extensions.swift
//  SlotMachine
//
//  Created by Lexter Tapawan on 28/11/2023.
//

import SwiftUI

extension Text {
    func scoreLabelStyle() -> Text {
        self
            .foregroundStyle(Color.white)
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
    
    func scoreNumberStyle() -> Text {
        self
            .foregroundStyle(Color.white)
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
    }
}
