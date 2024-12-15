//
//  WebView.swift
//  NavigationPathSample
//
//  https://github.com/RyoDeveloper/NavigationPathSample
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}

#Preview {
    WebView(url: Event.lunch.url)
}
