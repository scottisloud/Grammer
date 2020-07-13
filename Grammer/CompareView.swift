//
//  CompareView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//


// TODO: Customize appearance of navigation bar: https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui

import SwiftUI

struct CompareView: View {
    
    @State private var items: Int = 1
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ... items, id: \.self) { comparator in
                    RowView(itemPrice: "", itemSize: "", multiplier: 1)
                }
                .onDelete { indexSet in
                    self.deleteRow(offests: indexSet)
                }
            }
            .navigationBarTitle("Compare Items", displayMode: .inline)
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                        self.items += 1
                        print("Add")
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            )
        }
    }
    
    func deleteRow(offests: IndexSet) {
        if self.items != 0 {
            self.items -= 1
        }
        
    }
}


struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
