//
//  EventDetailView.swift
//  NavigationPathSample
//
//  https://github.com/RyoDeveloper/NavigationPathSample
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI

enum EventDetailDestination {
    case map
    case web
}

struct EventDetailView: View {
    let event: Event

    var body: some View {
        List {
            Text(event.date, style: .date)

            Section("Navigation") {
                NavigationLink("マップを開く", value: EventDetailDestination.map)
                NavigationLink("Webサイトを開く", value: EventDetailDestination.web)
            }
        }
        .navigationTitle(event.title)
        .navigationDestination(for: EventDetailDestination.self) {
            destination in
            switch destination {
            case .map:
                MapView(location: event.location)
            case .web:
                WebView(url: event.url)
            }
        }
    }
}

#Preview {
    NavigationStack {
        EventDetailView(
            event: Event.meeting
        )
    }
}
