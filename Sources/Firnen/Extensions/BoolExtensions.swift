//
//  BoolExtensions.swift
//
//
//  Created by Thomas Headley on 6/1/24.
//

import Foundation

public extension Bool {
  var intValue: Int {
    self ? 1 : 0
  }
}
