//
//  SettingsView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Text("Tips")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Spacer()
                
            }
            Text("Units")
                .font(.title)
            
            Text("When inputting units, enter the total units for the packaged product. If it's a 650g box of cereal, enter \"650\". If it's a 12oz bottle of sanitzier, enter \"12\". Use the same units for all items being compared")
                .padding(.bottom, 20)
            
            
            Text("Multiplier")
                .font(.title)
            
            Text("The multiplier is ideal when the unit price for a single unit (e.g., 1 gram) is too low to be reasonably compared. Ensure you use the same multiplier across all items being compared. ")
                .padding(.bottom, 20)
            
            Text("Add/Remove Items")
                .font(.title)
            
            Text("You can compare as many items as you would like. Simply add a new item with the \"+\" button at the top. If you'd like to remove an item, you can swipe left on an item to delete.")
                .padding(.bottom, 20)
            
            Spacer()
        }
        .padding(.horizontal, 10)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
