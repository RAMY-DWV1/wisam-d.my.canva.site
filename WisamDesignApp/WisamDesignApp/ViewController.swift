//
//  ViewController.swift
//  WisamDesignApp
//
//  Created by Ramy Mkarem on 17/08/2025.
//

import SwiftUI
import WebKit

struct ViewController: View {
    let websiteURL = "https://wisam-d.my.canva.site"
    
    var body: some View {
        VStack {
            if let url = URL(string: websiteURL) {
                WebView(url: url)
                    .edgesIgnoringSafeArea(.all)
            } else {
                Text("Error: Invalid URL")
                    .foregroundColor(.red)
            }
        }
    }
}