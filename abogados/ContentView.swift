//
//  ContentView.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var isDrawerOpen: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                HomeView()
                
                if isDrawerOpen {
                    Color.black.opacity(0.2).ignoresSafeArea()
                }
                
                NavigationDrawer(isOpen: isDrawerOpen)
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("", systemImage: "line.3.horizontal") {
                        isDrawerOpen.toggle()
                    }
                }
            }
            .toolbar {
                Button("", systemImage: "bell") {
                    isDrawerOpen.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
