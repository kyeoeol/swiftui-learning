//
//  BookDetailView.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/04.
//

import SwiftUI

struct BookDetailView: View {
    
    @EnvironmentObject var myBooks: MyBooks
    @State var isState = false
    
    var body: some View {
        VStack {
            Text(myBooks.books[0].name)
            
            Button {
                myBooks.books.remove(at: 0)
            } label: {
                Text("지운당")
            }
            
            ButtonView(state: $isState)

        }
        
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static let myBooks = MyBooks()
    static var previews: some View {
        BookDetailView()
            .environmentObject(myBooks)
    }
}
