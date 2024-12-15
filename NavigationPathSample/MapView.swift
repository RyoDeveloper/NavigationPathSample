//
//  MapView.swift
//  NavigationPathSample
//
//  https://github.com/RyoDeveloper/NavigationPathSample
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import MapKit
import SwiftUI

struct MapView: View {
    let location: CLLocationCoordinate2D

    var body: some View {
        Map {
            Marker("目的地", coordinate: location)
        }
        .navigationTitle("Map")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MapView(location: Event.meeting.location)
    }
}
