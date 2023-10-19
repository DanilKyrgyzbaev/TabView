//
//  MapView.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map {
            Marker("Empire state building", coordinate: .empireStateBuilding)
                .tint(.orange)
            Annotation("Columbia University", coordinate: .columbiaUniversity) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.teal)
                    Text("🎓")
                        .padding(5)
                }
            }
        }
    }
}

extension CLLocationCoordinate2D {
    static let weequahicPark = CLLocationCoordinate2D(latitude: 40.7063, longitude: -74.1973)
    static let empireStateBuilding = CLLocationCoordinate2D(latitude: 40.7484, longitude: -73.9857)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.9626)
}





#Preview {
    MapView()
}
