//
//  MapView.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import Foundation
import SwiftUI
import MapKit


final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: MapView
    init(_ control: MapView) {
        self.control = control
    }
}

struct MapView: UIViewRepresentable {
    
    let mapType: MKMapType
    
    func makeUIView(context: Context) -> some MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.mapType = mapType
    }
}
