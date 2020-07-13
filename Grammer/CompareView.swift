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
    @State private var keyboardHeight: CGFloat = 0
    
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
            .onTapGesture {
                UIApplication.shared.endEditing()
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
    
    private func deleteRow(offests: IndexSet) {
        if self.items != 0 {
            self.items -= 1
        }
    }
}

// MARK: - Extentions
// Creates an endEditing method that can be called against UIApplication.shared to resign first responder status and dismiss a keyboard. Particularly helpful on a .onTapGesture() view modifier.
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
