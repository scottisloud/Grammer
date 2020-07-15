//
//  SettingsView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct SettingsView: View {
    @State var multiplier: Int = UserDefaults.standard.integer(forKey: "Multipler")
    @State var decimals: Int = UserDefaults.standard.integer(forKey: "Decimals")
    
    static let multipliers = [1, 10, 100]
    static let decimalPlaces = [2, 3, 4, 5, 6]
    
    var body: some View {
        Form {
            Section(header: Text("Settings")) {
                Picker("Multiplier", selection: $multiplier) {
                    ForEach(0 ..< Self.multipliers.count) {
                        Text("x\(Self.multipliers[$0])")
                    }
                }
                
                Picker("Decimal places", selection: $decimals) {
                    ForEach(0 ..< Self.decimalPlaces.count) {
                        Text("\(Self.decimalPlaces[$0])")
                    }
                }
            }
            Section(header: Text("Tips")) {
                VStack(alignment: .leading) {
                    Text("Units")
                        .font(.headline)
                    
                    Text("When inputting units, enter the total units for the packaged product. If it's a 650g box of cereal, enter \"650\". If it's a 12oz bottle of sanitzier, enter \"12\". Use the same units for all items being compared")
                        .padding(.bottom, 20)
                    
                    
                    Text("Multiplier")
                        .font(.headline)
                    
                    Text("The multiplier is ideal when the unit price for a single unit (e.g., 1 gram) is too low to be reasonably compared. Ensure you use the same multiplier across all items being compared. ")
                        .padding(.bottom, 20)
                    
                    Text("Add/Remove Items")
                        .font(.headline)
                    
                    Text("You can compare as many items as you would like. Simply add a new item with the \"+\" button at the top. If you'd like to remove an item, you can swipe left on an item to delete.")
                        .padding(.bottom, 20)
                    
                    Spacer()
                }
            }
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
