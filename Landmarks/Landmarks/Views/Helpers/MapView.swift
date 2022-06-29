//
//  MapView.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region: MKCoordinateRegion = .init()
    
    // MARK: - Functions
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    // MARK: - Body
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
}

// MARK: - Previews

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: ModelData().landmarks[0].locationCoordinate)
    }
}
