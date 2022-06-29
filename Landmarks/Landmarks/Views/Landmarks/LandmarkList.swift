//
//  LandmarkList.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI

struct LandmarkList: View {
    // MARK: - Properties
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        return modelData.landmarks.filter {
            !showFavoritesOnly || $0.isFavorite
        }
    }
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                } //: ForEach
            } //: List
            .navigationTitle("Landmarks")
        } //: NavigationView
    }
}

// MARK: - Previews

struct LandmarkList_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkList()
            .environmentObject(modelData)
    }
}
