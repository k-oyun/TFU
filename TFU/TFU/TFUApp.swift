//
//  TourForYouApp.swift
//  TourForYou
//
//  Created by Admin on 8/18/25.
//

import SwiftUI

@main
struct TourForYouApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
            
        }
    }
}
