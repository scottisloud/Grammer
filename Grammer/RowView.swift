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
    @State var multiplier: Int
    
    static let multipliers = [1, 10, 100]
    
    var body: some View {
        VStack {
            HStack {
                
                    VStack {
                        Text("Item Price")
                        TextField("Price", text: $itemPrice)
                            .font(.title3)
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        Text("Item Size")
                        TextField("Item Size", text: $itemSize)
                            .font(.title3)
                            .multilineTextAlignment(.center)
                    }
            }
            VStack {
                Text("Unit Price").font(.title2)
                
                    Text("$0.056")
                        .font(.title).fontWeight(.black)
                    Picker("Multiplier", selection: $multiplier) {
                        ForEach(0 ..< Self.multipliers.count) {
                            Text("x\(Self.multipliers[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle()).fixedSize()
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(itemPrice: "", itemSize: "", multiplier: 0)
    }
}
