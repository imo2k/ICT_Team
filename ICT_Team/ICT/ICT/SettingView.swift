//
//  SettingView.swift
//  ICT
//
//  Created by GO on 7/10/24.
//

import SwiftUI

struct SettingView: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false

    var body: some View {
        VStack {
            // Top bar with icons and Dark Mode text
            HStack {
                Spacer()
                
                Text("Dark Mode")
                
                Button(action: {
                    isDarkMode.toggle()
                }) {
                    Image(systemName: isDarkMode ? "moon.fill" : "moon.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding()
                        .foregroundColor(isDarkMode ? .white : .black)
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(isDarkMode ? Color.white : Color.black))
                }
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
                        .foregroundColor(isDarkMode ? .white : .black)
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(isDarkMode ? Color.white : Color.black))
                    Text("검색 설정")
                        .font(.headline)
                    Spacer()
                }
                .padding(.bottom, 8)
                
                Text("한 번에 로드할 항목 수")
                Text("25")
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
                        .foregroundColor(isDarkMode ? .white : .black)
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(isDarkMode ? Color.white : Color.black))
                    Text("즐겨찾기 설정")
                        .font(.headline)
                    Spacer()
                }
                .padding(.bottom, 8)
                
                Text("즐겨찾기 항목 관리")
                Text("")
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
                        .foregroundColor(isDarkMode ? .white : .black)
                        .clipShape(Rectangle())
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(isDarkMode ? Color.white : Color.black))
                    Text("알림 설정")
                        .font(.headline)
                    Spacer()
                }
                .padding(.bottom, 8)
                
                Text("알림 항목 설정")
                Text("즐겨찾기 항목만")
                Text("알림 소리 설정")
                Text("15")
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    SettingView()
}
