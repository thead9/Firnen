//
//  SheetProvider.swift
//
//
//  Created by Thomas Headley on 4/19/24.
//  Base from https://danielsaidi.com/blog/2020/06/06/swiftui-sheets

import SwiftUI

public protocol SheetProvider {
  var sheet: AnyView { get }
}
