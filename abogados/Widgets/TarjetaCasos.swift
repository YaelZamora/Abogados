//
//  TarjetaCasos.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct TarjetaCasos: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill").font(.largeTitle)
            Text("Armando Mendoza").font(.caption)
        }.padding().frame(width: 110, height: 110).overlay(
            RoundedRectangle(cornerRadius: 25.0).stroke(.gray)
        )
    }
}

#Preview {
    TarjetaCasos()
}
