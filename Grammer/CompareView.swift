//
//  CompareView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct CompareView: View {
    
    @State var comparators: Int = 1
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< comparators) { comparator in
                    RowView()
                }
            }
            .navigationTitle("Compare Items")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
