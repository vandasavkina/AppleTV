//
//  AppleTvApp.swift
//  AppleTv
//
//  Created by Vanda Savkina on 14/11/23.
//

import SwiftUI

@main
struct AppleTvApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView() {
            ContentView()
                .tabItem {
                Image(systemName: "play.circle.fill")
                Text("Watch Now")
            }
            .tag(1)
                
            OriginalsView()
                .tabItem {
                Image(systemName: "appletv.fill")
                Text("Originals")
            }
            .tag(2)
                
            StoreView()
                .tabItem {
                Image(systemName: "bag.fill")
                Text("Store")
            }
            .tag(3)
            
            LibraryView()
                .tabItem {
                Image(systemName: "square.stack.fill")
                Text("Library")
            }
            .tag(4)
            
            SearchView()
                .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            .tag(5)
                
            } .preferredColorScheme(.dark)
        }
    }
}
