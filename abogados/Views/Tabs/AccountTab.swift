//
//  AccountTab.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct AccountTab: View {
    let iconos = ["envelope", "key", "faceid", "person.2.fill", "xmark.circle"]
    let titulos = ["Cambiar correo", "Cambiar contraseña", "Face ID", "Cambiar despacho", "Cerrar sesión"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    AsyncImage(url: URL(string: "https://picsum.photos/id/314/100")).cornerRadius(50)
                
                    VStack {
                        Text("Yael Zamora").font(.largeTitle).bold()
                    
                        Text("Abogado del despacho:\nPingüinos unidos")
                    }
                }.padding(.horizontal)
                
                ForEach(0..<5) { item in
                    ListTile(icon: iconos[item], title: titulos[item], information: "")
                }
            }
        }
    }
}

#Preview {
    AccountTab()
}
