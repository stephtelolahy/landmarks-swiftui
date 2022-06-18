//
//  Landmark.swift
//  Landmarks
//
//  Created by TELOLAHY Hugues Stéphano on 18/06/2022.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Decodable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
