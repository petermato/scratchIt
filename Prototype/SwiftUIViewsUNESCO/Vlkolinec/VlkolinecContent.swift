//
//  VlkolinecContent.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct VlkolinecContent: View {
    var body: some View {
                VStack {
                    //Map
                    VlkolinecMap()
                        .frame(height: 300)
                    // Image
                    VlkolinecCircle().offset(y: -130)
                        .padding(.bottom, -130)
            
                    
                    // TextViews
                    VStack (alignment: .leading){
                        Text("Vlkolínec")
                            .font(.title).foregroundColor(.pink).bold()
                        HStack {
                            Text("Vlkolínec je pôvabná dedinka ležiaca uprostred nádhernej prírody Liptova, v ktorej si návštevníci môžu plnými dúškami vychutnávať jedinečnú atmosféru plnú pozoruhodných tradícií a neopakovateľnej histórie. Predstavuje najzachovalejšiu pamiatkovú rezerváciu ľudovej architektúry na Slovensku. Vďaka unikátnym pôvodným dreveným stavbám bol v roku 1993 zapísaný do Zoznamu svetového dedičstva UNESCO.").font(.subheadline).foregroundColor(.blue)
                            Spacer()
                            Text("Slovensko").font(.subheadline).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                }
            }
        }

struct VlkolinecContent_Previews: PreviewProvider {
    static var previews: some View {
        VlkolinecContent()
    }
}
