//
//  AppView.swift
//  Grammer
//
//  Created by Scott Lougheed on 2020/07/9.
//

import SwiftUI

struct AppView: View {
    
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
    
    struct AppView_Previews: PreviewProvider {
        static var previews: some View {
            AppView()
        }
    }
}
