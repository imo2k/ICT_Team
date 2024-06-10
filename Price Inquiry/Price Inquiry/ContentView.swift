//
//  ContentView.swift
//  Price Inquiry
//
//  Created by o2k
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Top bar with notification, search, and menu buttons
                HStack {
                    Button(action: {
                        // Notification action
                    }) {
                        Image(systemName: "bell")
                            .padding()
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            // Search action
                        }) {
                            Image(systemName: "magnifyingglass")
                        }
                        
                        Button(action: {
                            // Menu action
                        }) {
                            Image(systemName: "line.horizontal.3")
                        }
                    }
                    .padding()
                }
                
                // Placeholder for the main content (e.g., an image or banner)
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 200)
                        .cornerRadius(10)
                                    
                    Text("슬라이드 쇼 삽입예정")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    }
                    .padding()
                
                // Grid of categories
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    CategoryButton(icon: "applelogo", label: "Text")
                    CategoryButton(icon: "carrot.fill", label: "Text")
                    CategoryButton(icon: "", label: "Text")
                    CategoryButton(icon: "fish.fill", label: "Text")
                    CategoryButton(icon: "fork.knife", label: "Text")
                    CategoryButton(icon: "flame.fill", label: "Text")
                }
                .padding()
                
                Spacer()
                
                // Bottom navigation bar
                HStack {
                    NavigationButton(icon: "house.fill", destination: ContentView())
                    Spacer()
                    NavigationButton(icon: "magnifyingglass", destination: SearchView())
                    Spacer()
                    NavigationButton(icon: "star.fill", destination: FavoritesView())
                }
                .padding()
                .background(Color.white)
                .shadow(radius: 2)
            }
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct CategoryButton: View {
    var icon: String
    var label: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            Text(label)
                .font(.headline)
        }
    }
}

struct NavigationButton<Destination: View>: View {
    var icon: String
    var destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding()
        }
    }
}

struct SearchView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Search bar
            HStack {
                TextField("Search for groceries", text: .constant(""))
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                Button(action: {
                    // Menu action
                }) {
                    Image(systemName: "line.horizontal.3")
                        .padding()
                }
            }
            .padding()
            
            // Categories header
            Text("Categories")
                .font(.headline)
                .padding(.horizontal)
            
            // Categories list
            List {
                CategoryRow(icon: "applelogo", label: "Fruits")
                CategoryRow(icon: "leaf.fill", label: "Bakery")
                CategoryRow(icon: "carrot.fill", label: "Vegetables")
                CategoryRow(icon: "egg.fill", label: "Dairy")
                CategoryRow(icon: "fish.fill", label: "Seafood")
                CategoryRow(icon: "line.horizontal.3", label: "Meat")
                CategoryRow(icon: "fork.knife", label: "Utensils")
                CategoryRow(icon: "cart.fill", label: "Shopping")
                CategoryRow(icon: "creditcard.fill", label: "Expenses")
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Search", displayMode: .inline)
        }
    }
}

struct FavoritesView: View { // Placeholder for the Favorites view
    var body: some View {
        Text("Favorites")
            .navigationBarTitle("Favorites", displayMode: .inline)
    }
}

struct CategoryRow: View {
    var icon: String
    var label: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
                .padding(.trailing, 10)
            
            Text(label)
                .font(.body)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    ContentView()
}
