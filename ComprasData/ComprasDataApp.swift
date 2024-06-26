//
//  ComprasDataApp.swift
//  ComprasData
//
//  Created by German David Vertel Narvaez on 26/06/24.
//

import SwiftUI
import SwiftData

@main
struct ComprasDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ListModel.self)
        }
    }
}
