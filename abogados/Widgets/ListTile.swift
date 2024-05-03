//
//  ListTile.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct ListTile: View {
    @State var icon: String
    @State var title: String
    @State var information: String
    
    var body: some View {
        HStack {
            Image(systemName: icon).font(.title)
            
            VStack(alignment: .leading) {
                Text(title).font(.title3)
                
                Text(information)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .frame(width: UIScreen.screenWidth * 0.85)
        .padding()
        .background(.gray.opacity(0.2))
        .cornerRadius(20)
        .padding(.horizontal)
        .foregroundColor(.primary)
    }
}
