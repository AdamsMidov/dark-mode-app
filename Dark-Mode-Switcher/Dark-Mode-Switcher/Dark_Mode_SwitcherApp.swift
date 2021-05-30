//
//  Dark_Mode_SwitcherApp.swift
//  Dark-Mode-Switcher
//
//  Created by Adams Midov on 30/05/21.
//

import SwiftUI

@main
struct Dark_Mode_SwitcherApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
           
//            .environment(\.colorScheme, isDarkMode ? .dark : .light)
            .preferredColorScheme(isDarkMode ? .dark : .light)
            .accentColor(.primary)
        }
    }
}
