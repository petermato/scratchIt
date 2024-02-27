//
//  SpisView.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct SpisView: View {
    @State var scrollText = true
    var body: some View {
                        VStack {
                            //Map
                            SpisMap()
                                .frame(height: 300)
                            // Image
                            SpisCircle().offset(y: -130)
                                .padding(.bottom, -130)
                    
                            
                            // TextViews
                            VStack (alignment: .leading){
                                Text("Spišský hrad, Levoča a kultúrne pamiatky okolia")
                                    .font(.title).foregroundColor(.pink).bold()
                                HStack {
                                    Text("Nádherný výhľad na okolie ponúka dominan- ta tohto malebného regiónu – Spišský hrad, týčiaci sa na najväčšej vápencovej skale.Zapísaný do Zoznamu svetového dedičstva UNESCO. Stredoveké kráľovské mesto Levoča, ležiace na východe regiónu Spiš pod Levočskými vrchmi, patrí vďaka svojej bohatej minulosti medzi kultúrno-historicke skvosty Slovenska. Množstvo vzácnych architektonických pamiatok, nadväzujúcich na slávne dejiny mesta, chránia dodnes zachovalé mestské hradby.  ").font(.subheadline).foregroundColor(.blue)
                                    Spacer()
                                    Text("Slovensko").font(.subheadline).bold()
                                }
                            }.padding()
                            
                            Spacer()
                            
                        }
                    }
                }

struct SpisView_Previews: PreviewProvider {
    static var previews: some View {
        SpisView()
    }
}
