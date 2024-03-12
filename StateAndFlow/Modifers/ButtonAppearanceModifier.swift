//
//  ButtonApperanceModifier.swift
//  StateAndFlow
//
//  Created by horze on 11.03.2024.
//

import SwiftUI

struct ButtonAppearanceModifier: ViewModifier {
    
    let color: Color
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .clipShape(.rect(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 5)
            )
    }
}

extension View {
    func buttonAppearance(_ color: Color) -> some View {
        ModifiedContent(content: self, modifier: ButtonAppearanceModifier(color: color))
    }
}
