//
//  CustomAnnotations.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI
import MapKit

struct CustomPlace: Identifiable {
    
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
}

struct CustomAnnotations: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -34.629443, longitude: -58.459868),
                                                   latitudinalMeters: 500,
                                                   longitudinalMeters: 500 )
    let annotations =  [
        CustomPlace(name: "La Bonorino", coordinate: CLLocationCoordinate2D(latitude: -34.628298, longitude: -58.458518)),
        CustomPlace(name: "Aromi", coordinate: CLLocationCoordinate2D(latitude: -34.627841, longitude: -58.460056)),
        CustomPlace(name: "Fiamma", coordinate: CLLocationCoordinate2D(latitude: -34.626989, longitude: -58.458033))
    ]
    
    var rating: String {
        return String(format: "%.1f", Double.random(in: 1...5))
    }
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { place in
            MapAnnotation(coordinate: place.coordinate) {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text(rating)
                        .fixedSize()
                }.padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .overlay(Image(systemName: "arrowtriangle.left.fill")
                                .rotationEffect(Angle(degrees: 270))
                                .foregroundColor(.white)
                                .offset(y: 10)
                             , alignment: .bottom)
            }
        }
    }
}

struct CustomAnnotations_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnnotations()
    }
}
