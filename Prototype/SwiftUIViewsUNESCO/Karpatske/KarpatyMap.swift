//
//  KarpatyMap.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct KarpatyMap: UIViewRepresentable {
       func makeUIView(context: UIViewRepresentableContext<KarpatyMap>) -> MKMapView {
            
            MKMapView()
        }
        
        func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<KarpatyMap>) {
            // Put the code to update
            let coordinate = CLLocationCoordinate2D(
                latitude: 49.00969, longitude: 22.33602)
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }

struct KarpatyMap_Previews: PreviewProvider {
    static var previews: some View {
        KarpatyMap()
    }
}
