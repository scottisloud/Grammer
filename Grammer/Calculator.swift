//
//  Calculator.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import Foundation


func unitCalculator(itemPrice: Double, itemSize: Double, multiplier: Int) -> Double {
    
    switch multiplier {
    case 1:
        return (itemPrice/itemSize) * 10
    case 2:
        return (itemPrice/itemSize) * 100
    default:
        return (itemPrice/itemSize)
    }
}
