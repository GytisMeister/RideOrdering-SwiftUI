//
//  RideLocation.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import CoreLocation

struct RideLocation: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let coordinate: CLLocationCoordinate2D
}
