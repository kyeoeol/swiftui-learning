//
//  Model.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/04.
//

import Foundation

class MyBooks: ObservableObject {
    @Published var books = [
        Book(name: "book - 0"),
        Book(name: "book - 1"),
        Book(name: "book - 2")
    ]
}

struct Book {
    var name: String
}
