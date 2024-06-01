//
//  Highlighted.swift
//
//
//  Created by Thomas Headley on 4/27/24.
//

import SwiftUI

public struct Highlighted: ViewModifier {
  public func body(content: Content) -> some View {
    content
      .foregroundStyle(Color.accentColor)
      .padding(.vertical, 5)
      .padding(.horizontal, 10)
      .background(Color.accentColor.opacity(0.1))
      .clipShape(RoundedRectangle(cornerRadius: 5))
  }
}

public extension View {
  func highlighted() -> some View {
    modifier(Highlighted())
  }
}
