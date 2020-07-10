//
//  CompareView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct CompareView: View {
    
    var body: some View {
        NavigationView {
            List {
                RowView(itemPrice: "", itemSize: "", multiplier: 1)
                RowView(itemPrice: "", itemSize: "", multiplier: 1)
            }
            .navigationTitle("Compare Items")
            .navigationBarTitleDisplayMode(.inline)
            //            .navigationBarItems(trailing:
            //                                    Button(action: {
            //                                        self.comparators += 1
            //                                        print("Add")
            //                                    }, label: {
            //                                        Image(systemName: "plus")
            //                                    }))
        }
    }
}

struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
