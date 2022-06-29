//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/28.
//

import SwiftUI

@main
struct LandmarksApp: App {
    // MARK: - Properties
    
    @StateObject private var modelData = ModelData()
    
    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
