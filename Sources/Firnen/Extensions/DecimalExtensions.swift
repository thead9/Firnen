//
//  DecimalExtensions.swift
//  
//
//  Created by Thomas Headley on 5/27/24.
//

import Foundation

public extension Decimal {
  func asCurrency() -> String {
    let currencyFormatter = NumberFormatter()
    currencyFormatter.usesGroupingSeparator = true
    currencyFormatter.numberStyle = .currency
    // localize to your grouping and decimal separator
    currencyFormatter.locale = Locale.current
    
    return currencyFormatter.string(from: self as NSDecimalNumber) ?? "--"
  }
}
