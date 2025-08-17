//
//  ViewController.swift
//  WisamDesignApp
//
//  Created by Ramy Mkarem on 17/08/2025.
//
//  This ViewController displays the Wisam Design Canva website
//  (https://wisam-d.my.canva.site) using WKWebView in SwiftUI.
//  It handles URL validation and provides error UI if the URL is invalid.

import SwiftUI
import WebKit

struct ViewController: View {
    let websiteURL = "https://wisam-d.my.canva.site"
    
    var body: some View {
        VStack(spacing: 0) {
            if let url = URL(string: websiteURL) {
                WebView(url: url)
                    .ignoresSafeArea(.all, edges: .all)
            } else {
                VStack {
                    Image(systemName: "exclamationmark.triangle")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    Text("Error: Invalid URL")
                        .foregroundColor(.red)
                        .padding()
                    Text(websiteURL)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(.systemBackground))
            }
        }
    }
}

#Preview {
    ViewController()
}