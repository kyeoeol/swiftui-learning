//
//  SwiftUI_PlaygroundApp.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/02.
//

import SwiftUI

@main
struct SwiftUI_PlaygroundApp: App {
    @StateObject var myBooks = MyBooks()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(myBooks)
        }
    }
}
