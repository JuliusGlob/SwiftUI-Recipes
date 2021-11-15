//
//  LocationView.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @StateObject private var locationManager = LocationManager()
    
    var newRegion: Binding<MKCoordinateRegion>? {
        
        guard let location = locationManager.location else {
            return MKCoordinateRegion.deafaultRegion().asBindable()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        return region.asBindable()
    }
    
    var body: some View {
        if let region = newRegion {
            Map(coordinateRegion: region, interactionModes: .all, showsUserLocation: true)
        }
    }
    
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
