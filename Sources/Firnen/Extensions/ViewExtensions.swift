//
//  ViewExtensions.swift
//
//
//  Created by Thomas Headley on 6/14/24.
//

import SwiftUI

public extension View {
  func any() -> AnyView {
    AnyView(self)
  }
}

