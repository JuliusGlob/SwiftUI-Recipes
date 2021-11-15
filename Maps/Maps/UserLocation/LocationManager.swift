//
//  LocationManager.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    @Published var location: CLLocation?
    private var locationFound: Bool = false
    
    override init() {
        super.init()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if !locationFound {
            guard let location = locations.last else {
                return
            }
            locationFound = true
            DispatchQueue.main.async {
                self.location = location
            }
        }
    }
}
