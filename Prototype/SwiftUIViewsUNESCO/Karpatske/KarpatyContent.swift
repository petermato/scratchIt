//
//  KarpatyContent.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct KarpatyContent: View {
    var body: some View {
                VStack {
                    //Map
                    KarpatyMap()
                        .frame(height: 300)
                    // Image
                    KarpatyCircle().offset(y: -130)
                        .padding(.bottom, -130)
            
                    
                    // TextViews
                    VStack (alignment: .leading){
                        Text("Karpatské bukové pralesy")
                            
                            .font(.title).foregroundColor(.pink).bold()
                        HStack {
                            Text("Chránené lokality zachovaných bukových pralesov Stužica, Rožok a Havešová sa nachádzajú v najmladšom slovenskom Národnom parku Poloniny, rozprestierajúcom sa v Bukovských vrchoch. Vihorlatský prales leží v najlesnatejšej chránenej krajinnej oblasti Slovenska s názvom Vihorlat. územia vzácnej a nedotknutej prírody boli v roku 2007 zapísané do Zoznamu svetového dedičstva UNESCO.").font(.subheadline).foregroundColor(.blue)
                            Spacer()
                            Text("Slovensko").font(.subheadline).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                }
            }
        }

struct KarpatyContent_Previews: PreviewProvider {
    static var previews: some View {
        KarpatyContent()
    }
}
