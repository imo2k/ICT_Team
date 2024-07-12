//
//  SwiftUIView.swift
//  ICT
//
//  Created by o2k on 6/28/24.
//

import SwiftUI

struct SearchView: View {
    let categories = [
        ("Fruits", "applelogo"),
        ("Bakery", "bag.fill"),
        ("Vegetables", "leaf"),
        ("Dairy", "drop.fill"),
        ("Seafood", "fish"),
        ("Meat", "line.horizontal.3"),
        ("Utensils", "fork.knife"),
        ("Shopping", "cart"),
        ("Expenses", "dollarsign.circle")
    ]
    
    @State private var scrollProxy: ScrollViewProxy? = nil
    
    var body: some View {
        ZStack {
            ScrollViewReader { proxy in
                ScrollView {
                    VStack {
                        HStack {
                            TextField("search for groceries", text: .constant(""))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                            Image(systemName: "list.bullet")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 16) {
                            ForEach(categories.indices, id: \.self) { index in
                                HStack {
                                    Image(systemName: categories[index].1)
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(.black)
                                    Text(categories[index].0)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                                .id(index)  // Assigning an ID to each item
                            }
                        }
                        .padding()
                    }
                    .background(Color(UIColor.systemGroupedBackground))
                    .onAppear {
                        scrollProxy = proxy
                    }
                }
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        scrollProxy?.scrollTo(0, anchor: .top)
                    }) {
                        Image(systemName: "triangleshape.fill")
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.black)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    SearchView()
}

