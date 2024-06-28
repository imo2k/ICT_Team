//
//  HomeView.swift
//  ICT
//
//  Created by o2k on 6/28/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            HStack {
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                    .clipShape(Rectangle())
                    .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))

                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.leading, 190)
                
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
            }
            
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        Text("슬라이드 쇼 들어갈 예정")
                            .frame(width: 330, height: 200)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15)
                                .fill(Color.gray)
                                .opacity(0.4))
                    }
                    .padding()
                }
            }
            
            HStack {
                HStack {
                    Image(systemName: "applelogo")
                        .resizable()
                        .frame(width: 35, height: 40)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    
                    Text("과일류")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 10)
                }
                
                HStack {
                    Image(systemName: "fish.fill")
                        .resizable()
                        .frame(width: 35, height: 40)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    
                    Text("어류")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 10)
                }
                .padding(.leading, 40)
            }
            
            
            HStack {
                HStack {
                    Image(systemName: "applelogo")
                        .resizable()
                        .frame(width: 35, height: 40)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    
                    Text("과일류")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 10)
                }
                
                HStack {
                    Image(systemName: "fish.fill")
                        .resizable()
                        .frame(width: 35, height: 40)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    
                    Text("어류")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 10)
                }
                .padding(.leading, 40)
            }
            
            HStack {
                HStack {
                    Image(systemName: "applelogo")
                        .resizable()
                        .frame(width: 35, height: 40)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    
                    Text("과일류")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 10)
                }
                
                HStack {
                    Image(systemName: "fish.fill")
                        .resizable()
                        .frame(width: 35, height: 40)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    
                    Text("어류")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 10)
                }
                .padding(.leading, 40)
            }
            
            HStack {
                
                
                
            }
        }
    }
}

#Preview {
    HomeView()
}
