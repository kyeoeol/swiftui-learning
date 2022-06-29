//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI

struct LandmarkRow: View {
    // MARK: - Properties
    
    var landmark: Landmark
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        } //: HStack
    }
}

// MARK: - Previews

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(
            .fixed(width: 300, height: 70)
        )
    }
}
