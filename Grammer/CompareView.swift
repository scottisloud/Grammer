//
//  CompareView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//


// TODO: Customize appearance of navigation bar: https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui

import SwiftUI

struct CompareView: View {
    
    @State private var comparators: [RowView] = [RowView(itemPrice: "", itemSize: "", multiplier: 1), RowView(itemPrice: "", itemSize: "", multiplier: 1)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< comparators.count) { comparator in
                    RowView(itemPrice: "", itemSize: "", multiplier: 1)
                }
                .onDelete { indexSet in
                    deleteRow(offests: indexSet)
                }
            }
            .navigationTitle("Compare Items")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    HStack {
                                        Button(action: {
                                            comparators.append(RowView(itemPrice: "", itemSize: "", multiplier: 1))
                                            print("Add")
                                        }, label: {
                                            Image(systemName: "plus")
                                        })
                                    }
            )
        }
    }
    
    func deleteRow(offests: IndexSet) {
        comparators.remove(atOffsets: offests)
    }
}


struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
