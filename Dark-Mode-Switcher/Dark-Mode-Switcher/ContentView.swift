//
//  ContentView.swift
//  Dark-Mode-Switcher
//
//  Created by Adams Midov on 30/05/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        
        VStack {
            Picker("Mode", selection: $isDarkMode) {
                Text("Light")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            List(0..<5, id: \.self) { num in
                NavigationLink(destination: Text("\(num)")) {
                                Text("\(num)")
            }
        }
        }.navigationTitle("Home page")
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
