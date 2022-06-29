//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI

struct FavoriteButton: View {
    // MARK: - Properties
    
    @Binding var isSet: Bool
    
    // MARK: - Body
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }

    }
}

// MARK: - Previews

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
