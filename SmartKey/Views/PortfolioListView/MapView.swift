//
//  SwiftUIView.swift
//  SmartKey
//
//  Created by Mor Ohana on 12/1/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.554003, longitude: -70.842684),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
