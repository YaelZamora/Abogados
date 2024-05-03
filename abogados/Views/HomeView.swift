//
//  HomeView.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView() {
            HomeTab().tabItem {
                Label("Inicio", systemImage: "house")
            }
            
            MapsTab().tabItem {
                Label("Lugares", systemImage: "location")
            }
            
            AccountTab().tabItem {
                Label("Cuenta", systemImage: "person")
            }
        }
    }
}

#Preview {
    HomeView()
}
