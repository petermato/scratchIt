//
//  JaskyneMap.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct JaskyneMap: UIViewRepresentable {
       func makeUIView(context: UIViewRepresentableContext<JaskyneMap>) -> MKMapView {
            
            MKMapView()
        }
        
        func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<JaskyneMap>) {
            // Put the code to update
            let coordinate = CLLocationCoordinate2D(
                latitude: 48.477778, longitude: 20.470278)
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }

struct JaskyneMap_Previews: PreviewProvider {
    static var previews: some View {
        JaskyneMap()
    }
}
