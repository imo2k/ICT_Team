//
//  ICTApp.swift
//  ICT
//
//  Created by o2k on 6/27/24.
//

import SwiftUI

@main
struct ICTApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

