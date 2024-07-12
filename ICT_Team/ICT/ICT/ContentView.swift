//
//  ContentView.swift
//  ICT
//
//  Created by o2k on 6/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView() // Home screen
                .tabItem {
                    Image(systemName: "house.fill")
                }
            SearchView() // Search screen
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            FavoriteView() // Favorite screen
                .tabItem {
                    Image(systemName: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
