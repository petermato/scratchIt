//
//  KostolyMap.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct KostolyMap: UIViewRepresentable {
       func makeUIView(context: UIViewRepresentableContext<KostolyMap>) -> MKMapView {
            
            MKMapView()
        }
        
        func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<KostolyMap>) {
            // Put the code to update
            let coordinate = CLLocationCoordinate2D(
                latitude: 49.246701, longitude: 21.203967)
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }

struct KostolyMap_Previews: PreviewProvider {
    static var previews: some View {
        KostolyMap()
    }
}
