//
//  Extensions.swift
//  SwiftUICombineAndData
//
//  Created by Amaechi Chukwu on 02/06/2022.
//

import SwiftUI

extension View {
    func angularGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(colors: colors, center: .center, angle: .degrees(0.0)))
            .mask(self)
    }
    
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
    
    func blurBackground() -> some View {
        self
            .padding(16)
                   .background(Color("Background 1"))
                   .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
                   .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                               .stroke(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), lineWidth: 1).blendMode(.overlay))
                   .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}
