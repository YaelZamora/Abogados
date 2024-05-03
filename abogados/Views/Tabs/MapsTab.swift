//
//  MapsTab.swift
//  abogados
//
//  Created by Yael Javier Zamora Moreno on 01/05/24.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct MapsTab: View {
    @StateObject var locationManager = LocationManager()
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    
    var body: some View {
        @State var buscar = ""
        let placeholder = "Buscar..."
        
        ZStack {
            Map(initialPosition: position, interactionModes: [.all]) {
                Annotation("", coordinate: CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332)) {
                    Menu("", systemImage: "location") {
                        Menu("Juez a cargo:") {
                            Text("Rodrigo Guzman")
                        }
                        Menu("Telefono de contacto:") {
                            Text("5584789599")
                        }
                        Menu("Horario:") {
                            Text("Lunes: 9:00am - 6:00pm")
                            Text("Martes: 9:00am - 6:00pm")
                            Text("Miércoles: 9:00am - 6:00pm")
                            Text("Jueves: 9:00am - 6:00pm")
                            Text("Viernes: 11:00am - 4:00pm")
                        }
                        Text("Juzgado CDMX")
                    }
                }
            }
            VStack {
                Buscar(text: buscar, placeholder: placeholder)
                Spacer()
            }
        }.onAppear {
            
            if let location = locationManager.location {
                position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
            }
        }
    }
}

#Preview {
    MapsTab()
}
