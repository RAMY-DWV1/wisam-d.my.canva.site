//
//  WisamDesignAppApp.swift
//  WisamDesignApp
//
//  Created by Ramy Mkarem on 17/08/2025.
//

import SwiftUI

@main
struct WisamDesignAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
