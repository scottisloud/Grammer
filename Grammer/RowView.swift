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
    @State var multiplier: Int = 0
    
    var unitPrice: Double {
        unitCalculator(itemPrice: self.itemPrice, itemSize: self.itemSize, multiplier: self.multiplier)
    }
    static let multipliers = [1, 10, 100]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Item Price")
                    TextField("Price", text: $itemPrice)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                VStack {
                    Text("Item Size")
                    TextField("Item Size", text: $itemSize)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
            }
            VStack {
                Text("Unit Price").font(.title2)
                Text("$\(unitPrice)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Picker("Multiplier", selection: $multiplier) {
                    ForEach(0 ..< Self.multipliers.count) {
                        Text("x\(Self.multipliers[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle()).fixedSize()
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
