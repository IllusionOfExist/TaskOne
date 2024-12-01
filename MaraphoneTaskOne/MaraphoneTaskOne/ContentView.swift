//
//  ContentView.swift
//  MaraphoneTaskOne
//
//  Created by Sergey on 12/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                scrollView
                redSquare
            }
            .tabItem {
                Label("First", systemImage: "star")
            }
            .toolbarBackground(Color.white, for: .tabBar)
        }
    }
    
    private var scrollView: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(0..<101) {
                    createStackNumber($0)
                }
            }
        }
        .scrollClipDisabled()
    }
    
    private func createStackNumber(_ number: Int) -> some View {
        HStack {
            Text("\(number)")
                .foregroundColor(Color.gray)
                .font(.system(size: 20))
                .frame(width: 370)
        }
    }
    
    private var redSquare: some View {
        Rectangle()
            .fill(Color.red)
            .frame(height: 50)
            .opacity(0.8)
    }
}

#Preview {
    ContentView()
}
