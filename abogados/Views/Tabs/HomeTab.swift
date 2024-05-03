//
//  HomeTab.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI

struct HomeTab: View {
    @State private var texto = ""
    
    let personas = ["Armando Mendoza", "Merlina Zepeda", "Carlos Perez", "Omar Ramirez", "Carmen Jimenez", "Leonardo Gutierrez", "Guadalupe García", "Yunhuen García", "Adán García", "Mateo Ortega"]
    let tipo = ["Cliente", "Cliente", "Abogado", "Abogado", "Cliente", "Juez", "Cliente", "Juez", "Juez", "Cliente"]
    
    var body: some View {
        ScrollView {
            VStack {
                Buscar(text: texto, placeholder: "Buscar")
                
                HStack {
                    Text("Mis casos").font(.title).bold()
                    Spacer()
                    Button("", systemImage: "ellipsis.circle") {
                        
                    }
                }.padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10) { item in
                            NavigationLink {
                                
                            } label: {
                                TarjetaCasos().padding(.trailing).foregroundColor(.primary)
                            }
                        }
                    }
                }.padding(.leading)
                
                HStack {
                    Text("Urgente").font(.title).bold()
                    Spacer()
                }.padding()
                
                VStack {
                    ForEach(0..<10) { item in
                        NavigationLink {
                            //
                        } label: {
                            ListTile(icon: "exclamationmark.triangle", title: personas[item], information: "Mandar los documentos")
                        }
                    }
                }
                
                HStack {
                    Text("Contactos").font(.title).bold()
                    Spacer()
                }.padding()
                
                VStack {
                    ForEach(0..<10) { item in
                        NavigationLink {
                            //
                        } label: {
                            ListTile(icon: "person", title: personas[item], information: tipo[item])
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeTab()
}
