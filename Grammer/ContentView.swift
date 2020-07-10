//
//  ContentView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            CompareView()
                .tabItem {
                    Image(systemName: "arrow.right.arrow.left.square.fill")
                    Text("Compare")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                    
                }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
