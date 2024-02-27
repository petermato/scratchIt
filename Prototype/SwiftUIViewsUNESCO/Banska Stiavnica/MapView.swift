//
//  MapView.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
       func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
            
            MKMapView()
        }
        
        func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
            // Put the code to update
            let coordinate = CLLocationCoordinate2D(
                latitude: 48.44858, longitude: 18.91003)
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
