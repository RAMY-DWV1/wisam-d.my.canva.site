//
//  WebViewTests.swift
//  WisamDesignAppTests
//
//  Created by Ramy Mkarem on 17/08/2025.
//

import Testing
@testable import WisamDesignApp
import Foundation

struct WebViewTests {

    @Test func testWebsiteURLIsValid() async throws {
        let controller = ViewController()
        let url = URL(string: controller.websiteURL)
        #expect(url != nil, "Website URL should be valid")
        #expect(url?.scheme == "https", "URL should use HTTPS")
        #expect(url?.host == "wisam-d.my.canva.site", "URL should point to correct domain")
    }
    
    @Test func testWebsiteURLFormat() async throws {
        let expectedURL = "https://wisam-d.my.canva.site"
        let controller = ViewController()
        #expect(controller.websiteURL == expectedURL, "Website URL should match expected format")
    }
}