//
//  ProfileView.swift
//  ICT
//
//  Created by o2k on 6/28/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Top bar with icons and Dark Mode text
            HStack {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .padding()
                    .clipShape(Rectangle())
                    .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                Spacer()
                
                Text("Dark Mode")
                
                
                Image(systemName: "moon.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .padding()
                    .clipShape(Rectangle())
                    .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
            }
            .padding(.horizontal)
            
            Divider()
            
            // Search Options section
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    Text("Search Options")
                        .font(.headline)
                    Spacer()
                }
                .padding(.bottom, 8)
                
                Text("한 번에 로드할 항목 수")
                Text("저장 필터")
                Text("25")
            }
            .padding()
            
            Divider()
            
            // 즐겨찾기 Options section
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    Text("즐겨찾기 Options")
                        .font(.headline)
                    Spacer()
                }
                .padding(.bottom, 8)
                
                Text("즐겨찾기 항목 관리")
                Text("즐겨찾기 항목 제거")
            }
            .padding()
            
            Divider()
            
            // Alert Options section
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding()
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(Color.black))
                    Text("Alert Options")
                        .font(.headline)
                    Spacer()
                }
                .padding(.bottom, 8)
                
                Text("알림 항목 설정")
                Text("알림 소리 설정")
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}

