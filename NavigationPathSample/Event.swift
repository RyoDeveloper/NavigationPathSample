//
//  Event.swift
//  NavigationPathSample
//
//  https://github.com/RyoDeveloper/NavigationPathSample
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import Foundation
import MapKit

struct Event: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let date: Date
    let location: CLLocationCoordinate2D
    let url: URL

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Event, rhs: Event) -> Bool {
        return lhs.id == rhs.id
    }
}

// Sample data
extension Event {
    static let meeting = Event(
        title: "ミーティング",
        date: Date(),
        location: CLLocationCoordinate2D(
            latitude: 37.334859,
            longitude: -122.00904
        ),
        url: URL(string: "https://github.com/RyoDeveloper")!
    )

    static let lunch = Event(
        title: "ランチ",
        date: Date(),
        location: CLLocationCoordinate2D(
            latitude: 35.661402,
            longitude: 139.7017622
        ),
        url: URL(string: "https://ryodeveloper.com")!
    )
}
