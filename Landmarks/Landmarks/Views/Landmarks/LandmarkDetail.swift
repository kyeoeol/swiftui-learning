//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI

struct LandmarkDetail: View {
    // MARK: - Properties
    
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        return modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                } //: HStack
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                } //: HStack
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
                
            } //: VStack
            .padding()
            
            Spacer()
        } //: ScrollView
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Previews

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
