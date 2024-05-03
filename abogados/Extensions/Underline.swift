//
//  Underline.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 5)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.red)
    }
}
