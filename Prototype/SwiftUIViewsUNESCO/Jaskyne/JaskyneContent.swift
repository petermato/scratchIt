//
//  JaskyneContent.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct JaskyneContent: View {
    var body: some View {
                VStack {
                    //Map
                    JaskyneMap()
                        .frame(height: 300)
                    // Image
                    JaskyneCircle().offset(y: -130)
                        .padding(.bottom, -130)
            
                    
                    // TextViews
                    VStack (alignment: .leading){
                        Text("Jaskyne Aggteleckého a Slovenského krasu")
                            .font(.title).foregroundColor(.pink).bold()
                        HStack {
                            Text("Málokde sa vyskytuje také výnimočné množstvo rozmanitých krasových útva- rov ako na Slovensku. Nachádza sa tu vyše 6 200 známych jaskýň, z ktorých je v súčasnosti 18 sprístupnených turis- tickej verejnosti. Tie najvýznamnejšie a najcennejšie sú zapísané do Zoznamu svetového dedičstva UNESCO. Ide o jaskyne Slovenského a Aggtelekského krasu, ktoré boli medzi svetové prírodné unikáty zaradené v roku 1995. V roku 2000 sa k nim pridala Dobšinská ľadová jaskyňa.").font(.subheadline).foregroundColor(.blue)
                            Spacer()
                            Text("Slovensko").font(.subheadline).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                }
            }
        }

struct JaskyneContent_Previews: PreviewProvider {
    static var previews: some View {
        JaskyneContent()
    }
}
