//
//  ContentView.swift
//  NavigationPathSample
//
//  https://github.com/RyoDeveloper/NavigationPathSample
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    @State private var events: [Event] = [Event.meeting, Event.lunch]

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(events) { event in
                    NavigationLink(event.title, value: event)
                }

                Section("Debug") {
                    Button("ミーティング / マップ") {
                        path = NavigationPath([Event.meeting])
                        path.append(EventDetailDestination.map)
                    }

                    Button("ランチ / Webサイト") {
                        path = NavigationPath([Event.lunch])
                        path.append(EventDetailDestination.web)
                    }
                }
            }
            .navigationTitle("今日の予定")
            .navigationDestination(for: Event.self) { event in
                EventDetailView(event: event)
            }
        }
    }
}

#Preview {
    ContentView()
}
