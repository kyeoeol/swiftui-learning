//
//  PlayerView.swift
//  SwiftUI Playground
//
//  Created by kyeoeol on 2022/07/02.
//

import SwiftUI

struct PlayerView: View {
    
    // MARK: - Properties
    
    @State private var isPlaying = false
    
    // MARK: - Body
    
    var body: some View {
        Button {
            isPlaying.toggle()
        } label: {
            Image(
                systemName: isPlaying
                            ? "pause.circle"
                            : "play.circle"
            )
        } //: Button
    }
}

// MARK: - Previews

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
