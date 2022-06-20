//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by TELOLAHY Hugues Stéphano on 18/06/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
