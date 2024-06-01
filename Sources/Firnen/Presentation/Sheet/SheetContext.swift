//
//  File.swift
//  
//
//  Created by Thomas Headley on 4/19/24.
//

import SwiftUI

public class SheetContext: PresentationContext<AnyView> {
  public override func content() -> AnyView {
    contentView ?? EmptyView().any()
  }
  
  public func present<Sheet: View>(_ sheet: Sheet) {
    present(sheet.any())
  }
  
  public func present(_ provider: SheetProvider) {
    contentView = provider.sheet
  }
}

public extension View {
  func sheet(_ context: SheetContext) -> some View {
    sheet(isPresented: context.isActiveBinding, content: context.content)
  }
}
