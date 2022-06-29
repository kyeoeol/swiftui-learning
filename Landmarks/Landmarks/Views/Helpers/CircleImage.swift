//
//  CircleImage.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI

struct CircleImage: View {
    // MARK: - Properties
    
    var image: Image
    
    // MARK: - Body
    
    var body: some View {
        image
            .clipShape(
                Circle()
            )
            .overlay(
                Circle()
                    .stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

// MARK: - Previews

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: ModelData().landmarks[0].image)
    }
}
