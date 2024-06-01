//
//  SeparatedCell.swift
//
//
//  Created by Thomas Headley on 4/27/24.
//

import SwiftUI

public struct SeparatedCell: ViewModifier {
  public func body(content: Content) -> some View {
    content
      .listRowSeparator(.hidden)
      .listRowBackground(
        RoundedRectangle(cornerRadius: 10)
          .background(.clear)
          .foregroundColor(Color(UIColor.secondarySystemGroupedBackground))
          .padding(.vertical, 5)
      )
  }
}

public extension View {
  func separatedCell() -> some View {
    modifier(SeparatedCell())
  }
}
