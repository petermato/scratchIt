//
//  BardejovMap.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI
import MapKit

struct BardejovMap: UIViewRepresentable {
    
       func makeUIView(context: UIViewRepresentableContext<BardejovMap>) -> MKMapView {
            
            MKMapView()
        }
        
        func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<BardejovMap>) {
            // Put the code to update
            let coordinate = CLLocationCoordinate2D(
                latitude: 49.29175, longitude: 21.27271)
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }
    

struct BardejovMap_Previews: PreviewProvider {
    static var previews: some View {
        BardejovMap()
    }
}
