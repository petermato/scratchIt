//
//  ContentView.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                VStack {
                    //Map
                    MapView()
                        .frame(height: 300)
                    // Image
                    CircleImage().offset(y: -130)
                        .padding(.bottom, -130)
            
                    
                    // TextViews
                    VStack (alignment: .leading){
                        Text("Banská Štiavnica")
                            .font(.title).foregroundColor(.pink).bold()
                        HStack {
                            Text("Banská Štiavnica je jedným z najkrajších a historicky najzaujímavejších miest na Slovensku. V decembri roku 1993 sa Banskej Štiavnici dostalo najvyššieho medzinárodného uznania, keď bolo mesto spolu s technickými pamiatkami v okolí zapísané do Zoznamu svetového kultúrneho a prírodného dedičstva UNESCO. V historickom jadre mesta - mestskej pamiatkovej rezervácii je 360 objektov umelecko - historických pamiatok. Archeologické nálezy na vrchu Glanzenberg dokazujú, že prvotné baníctvo sa na území dnešnej Banskej Štiavnice rozvíjalo už v období keltského osídlenia.").font(.subheadline).foregroundColor(.blue)
                            Spacer()
                            Text("Slovensko").font(.subheadline).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
