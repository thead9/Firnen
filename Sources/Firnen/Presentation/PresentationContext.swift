//
//  PresentationContext.swift
//
//
//  Created by Thomas Headley on 4/19/24.
//  Base from https://danielsaidi.com/blog/2020/06/06/swiftui-sheets

import SwiftUI

public class PresentationContext<Content>: ObservableObject {
  public init() {}
  
  @Published public var isActive = false
  
  public var isActiveBinding: Binding<Bool> {
    .init(get: { self .isActive }, set: { self.isActive = $0 })
  }
  
  open func content() -> Content { contentView! }
  
  public internal(set) var contentView: Content? {
    didSet { isActive = contentView != nil }
  }
  
  public func dismiss() {
    isActive = false
  }
  
  public func present(_ content: Content) {
    contentView = content
  }
}
