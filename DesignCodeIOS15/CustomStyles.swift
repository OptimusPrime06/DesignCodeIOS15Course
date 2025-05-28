//
//  CustomStyles.swift
//  DesignCodeIOS15
//
//  Created by Gulliver Raed on 5/28/25.
//

import SwiftUI

struct customStrokeStyle: ViewModifier {

    ///Variables
    var cornerRaduis: CGFloat
    @Environment(\.colorScheme) var colorScheme

    func body(content: Content) -> some View {
        content.overlay {
            RoundedRectangle(cornerRadius: cornerRaduis, style: .continuous)
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.6 : 0.3),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1),
                        ], startPoint: .top, endPoint: .bottom)
                )
                .blendMode(.overlay)
        }
    }
}


extension View {
    
    func customStrokeStyle(_ cornerRaduis: CGFloat = 30) -> some View {
        modifier(DesignCodeIOS15.customStrokeStyle(cornerRaduis: cornerRaduis))
    }
    
}

