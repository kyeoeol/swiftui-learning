//
//  ContentView.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BookDetailView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static let myBooks = MyBooks()
    
    static var previews: some View {
        ContentView()
            .environmentObject(myBooks)
    }
}
