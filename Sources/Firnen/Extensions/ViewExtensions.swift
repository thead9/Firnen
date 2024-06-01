//
//  File.swift
//  
//
//  Created by Thomas Headley on 4/26/24.
//

import SwiftUI

public extension View {
  func any() -> AnyView {
    AnyView(self)
  }
}
