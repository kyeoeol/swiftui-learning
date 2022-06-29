//
//  LandmarkList.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI

struct LandmarkList: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            } //: List
            .navigationTitle("Landmarks")
        } //: NavigationView
    }
}

// MARK: - Previews

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
