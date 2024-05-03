//
//  Buscar.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct Buscar: View {
    @State var text: String
    @State var placeholder: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField(placeholder, text: $text)
        }.frame(width: UIScreen.screenWidth * 0.85).padding().background(.gray.opacity(0.2)).cornerRadius(20)
    }
}

#Preview {
    Buscar(text: "", placeholder: "Buscar")
}
