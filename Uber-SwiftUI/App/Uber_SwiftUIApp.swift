//
//  Uber_SwiftUIApp.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-11.
//

import SwiftUI

@main
struct Uber_SwiftUIApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
