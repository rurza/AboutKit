//
//  PrimaryActionButtonStyle.swift
//  Horzono
//
//  Created by Adam on 08/04/2023.
//

import SwiftUI

public struct PrimaryActionButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnabled: Bool
    public let backgroundColor: Color
    public let fillParent: Bool
    
    public init(backgroundColor: Color, fillParent: Bool) {
        self.backgroundColor = backgroundColor
        self.fillParent = fillParent
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: fillParent ? .infinity : nil)
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(.white.opacity(0.95))
            .padding(.horizontal, 18)
            .padding(.vertical, 8)
            .background(isEnabled ? backgroundColor : Color(nsColor: .lightGray))
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            .shadow(
                color: isEnabled
                ? (colorScheme == .light ? backgroundColor.opacity(0.2) : Color.black.opacity(0.25))
                : Color.clear,
                radius: 10,
                x: 0,
                y: 8
            )
    }
}
