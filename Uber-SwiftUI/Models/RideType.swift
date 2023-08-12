//
//  RideTypeModel.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case uberX
    case uberBlack
    case uberXL
    case uberBlackSUV
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case.uberX:
            return "Uber X"
        case .uberBlack:
            return "Uber Black"
        case .uberXL:
            return "Uber XL"
        case .uberBlackSUV:
            return "Uber SUV"
        }
    }
    
    var imageName: String {
        switch self {
        case.uberX:
            return "uber-x"
        case .uberBlack:
            return "uber-black"
        case .uberXL:
            return "uber-XL"
        case .uberBlackSUV:
            return "uber-black-SUV"

        }
    }
    
    var baseFare: Double {
        switch self {
        case.uberX:
            return 5
        case .uberBlack:
            return 20
        case .uberXL:
            return 10
        case .uberBlackSUV:
            return 40
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
        
        switch self {
        case.uberX:
            return distanceInMiles * 1.5 + baseFare
        case .uberBlack:
            return distanceInMiles * 2.0 + baseFare
        case .uberXL:
            return distanceInMiles * 1.75 + baseFare
        case .uberBlackSUV:
            return distanceInMiles * 3.5 + baseFare
        }
    }
}
