//
//  Landmark.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    // 기본정보
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // 이미지
    private var imageName: String
    
    var image: Image {
        return Image(imageName)
    }
    
    // 위치정보
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
