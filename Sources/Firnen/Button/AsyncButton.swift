//
//  AsyncButton.swift
//
//
//  Created by Thomas Headley on 5/27/24.
//

import SwiftUI

public struct AsyncButton<Label: View>: View {
  public var action: () async -> Void
  @ViewBuilder var label: () -> Label
  
  @State private var isPerformingTask = false
  
  public init(action: @escaping () async -> Void, label: @escaping () -> Label) {
    self.action = action
    self.label = label
  }
  
  public var body: some View {
    Button(action: {
      isPerformingTask = true
      
      Task {
        await action()
        isPerformingTask = false
      }
    }, label: {
      ZStack {
        label().opacity(isPerformingTask ? 0 : 1)
        
        if isPerformingTask {
          ProgressView()
        }
      }
    })
    .disabled(isPerformingTask)
  }
}
