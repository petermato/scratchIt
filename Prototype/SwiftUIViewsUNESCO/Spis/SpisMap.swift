//
//  SpisMap.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct SpisMap: UIViewRepresentable {

           func makeUIView(context: UIViewRepresentableContext<SpisMap>) -> MKMapView {
                
                MKMapView()
            }
            
            func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<SpisMap>) {
                // Put the code to update
                let coordinate = CLLocationCoordinate2D(
                    latitude: 49.02173, longitude: 20.59212)
                let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                uiView.setRegion(region, animated: true)
            }
        }

struct SpisMap_Previews: PreviewProvider {
    static var previews: some View {
        SpisMap()
    }
}
