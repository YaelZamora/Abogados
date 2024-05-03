//
//  NavigationDrawer.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct NavigationDrawer: View {
    private let width = UIScreen.screenWidth - 100
    let isOpen: Bool
    
    var body: some View {
        HStack {
            DrawerContent()
                .frame(width: self.width)
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.default)
            Spacer()
        }
    }
}

#Preview {
    NavigationDrawer(isOpen: true)
}
