//
//  BardejovContent.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct BardejovContent: View {
    var body: some View {
                VStack {
                    //Map
                    BardejovMap()
                        .frame(height: 300)
                    // Image
                    BardejovCircle().offset(y: -130)
                        .padding(.bottom, -130)
            
                    // TextViews
                    VStack (alignment: .leading){
                        Text("Bardejov")
                            .font(.title).foregroundColor(.pink).bold()
                        HStack {
                            Text("Pýchou nielen Šariša, ale aj celého Slovenska je starobylý BARDEJOV, ktorý patrí bezpochyby medzi najkrajšie slovenské mestá. Právom ho v roku 2000 zaradili do Zoznamu svetového prírodného a kultúrneho dedičstva UNESCO. Bardejov sa tiež hrdí prívlastkom najgotickejšie mesto Slovenska. Malebné námestie s farebnými meštianskymi domami, majestátna Bazilika Minor sv. Egídia, Židovské suburbium, historická radnica, Katov dom, zachovalé mestské hradby s baštami. Na pomerne malom území je sústredené obrovské množstvo cenných a pozoruhodných pamiatok. ").font(.subheadline).foregroundColor(.blue)
                            Spacer()
                            Text("Slovensko").font(.subheadline).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                }
            }
        }

struct BardejovContent_Previews: PreviewProvider {
    static var previews: some View {
        BardejovContent()
    }
}
