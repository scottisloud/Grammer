//
//  RowView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct RowView: View {
    @State private var itemPrice = "7.99"
    @State private var itemSize = "750"
    var body: some View {
        HStack {
            VStack {
                TextField("Price", text: $itemPrice)
                    .background(Color.orange.brightness(0.09))
                TextField("Item Size", text: $itemSize)
                    .background(Color.orange.brightness(0.09))
            }
            .padding(.leading, 10)
            
            VStack {
                Text("Unit Price")
                Text("$0.056")
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
