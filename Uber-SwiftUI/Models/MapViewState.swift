//
//  MapViewState.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-11.
//

import Foundation

enum MapViewState {
    case noInput
    case searchingForLocation
    case locationSelected
    case polylineAdded
    case tripRequested
    case tripRejected
    case tripAccepted
    case tripCancelledByPassenger
    case tripCancelledByDriver
}
