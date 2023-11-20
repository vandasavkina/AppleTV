//
//  Home.swift
//  AppleTv
//
//  Created by Vanda Savkina on 16/11/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        /// Tab View
        TabView {
            /// Sample Tab's
        }
    }
    
    @ViewBuilder
    func SampleTabView(_ title: String, _ icon: String) -> some View {
        Text(title)
            .tabItem {
                Image(systemName: icon)
                Text(title)
            }
    }
}

#Preview {
    ContentView()
}
