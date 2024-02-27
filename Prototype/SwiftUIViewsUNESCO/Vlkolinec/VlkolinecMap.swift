//
//  VlkolinecMap.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct VlkolinecMap: UIViewRepresentable {
    
       func makeUIView(context: UIViewRepresentableContext<VlkolinecMap>) -> MKMapView {
            
            MKMapView()
        }
        
        func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<VlkolinecMap>) {
            // Put the code to update
            let coordinate = CLLocationCoordinate2D(
                latitude: 49.0393, longitude: 19.2783)
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }
struct VlkolinecMap_Previews: PreviewProvider {
    static var previews: some View {
        VlkolinecMap()
    }
}
