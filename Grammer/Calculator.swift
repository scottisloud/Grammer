//
//  Calculator.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import Foundation


func unitCalculator(itemPrice: String, itemSize: String, multiplier: Int) -> Double {
    
    guard let itemPrice = Double(itemPrice), let itemSize = Double(itemSize) else { return 0.00 }
    
    switch multiplier {
    case 0:
        return (itemPrice/itemSize)
    case 1:
        return (itemPrice/itemSize) * 10
    case 2:
        return (itemPrice/itemSize) * 100
    default:
        return (itemPrice/itemSize)
    }
    
    
}
