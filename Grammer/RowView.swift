//
//  RowView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct RowView: View {
    @State var itemPrice: String
    @State var itemSize: String
//    var defaults = UserDefaults.standard
    @State var multiplier = UserDefaults.standard.integer(forKey: "Multiplier")
        
    var unitPrice: Float {
        unitCalculator(itemPrice: self.itemPrice, itemSize: self.itemSize, multiplier: self.multiplier)
    }
    
    static let multipliers = [1, 10, 100]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Item Price")
                    TextField("Item Price", text: $itemPrice)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                VStack {
                    Text("Item Size")
                    TextField("Item Size", text: $itemSize)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
            }
            VStack {
                Text("Unit Price").font(.largeTitle)
                Text(String(format: "$%.4f", unitPrice))
                    .font(.title)
                    .fontWeight(.black)
                
                Picker("Multiplier", selection: $multiplier) {
                    ForEach(0 ..< Self.multipliers.count) {
                        Text("x\(Self.multipliers[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle()).fixedSize()
                Text("Multiplier")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 10)
        .accentColor(.orange)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(itemPrice: "7.99", itemSize: "750", multiplier: 0)
    }
}
