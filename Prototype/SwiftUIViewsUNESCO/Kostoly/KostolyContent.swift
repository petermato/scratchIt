//
//  KostolyContent.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct KostolyContent: View {
    var body: some View {
                VStack {
                    //Map
                    KostolyMap()
                        .frame(height: 300)
                    // Image
                    KostolyCircle().offset(y: -130)
                        .padding(.bottom, -130)
            
                    
                    // TextViews
                    VStack (alignment: .leading){
                        Text("Drevené kostoly v slovenských Karpatoch")
                            .font(.title).foregroundColor(.pink).bold()
                        HStack {
                            Text("Na území Slovenska sa nachádza viac ako 40 jedinečných drevených sakrálnych stavieb, z ktorých osem najvzácnejších bolo v roku 2008 zapísaných do Zoznamu svetového dedičstva UNESCO. Drevené rímsko-katolícke kostolíky drevené, čo podčiarkuje výnimočnosť v Hervartove a Tvrdošíne, evanjelické artikulárne chrámy v Kežmarku, Leštinách a Hronseku, ale aj svätostánky východného obradu v Bodružali, Ladomirovej a Ruskej Bystrej patria v slovenskej časti Karpatského oblúka k tým najväčším a najzaujímavejším sakrálnym skvostom, ktoré Slovensko môže svojim návštevníkom ponúknuť.").font(.subheadline).foregroundColor(.blue)
                            Spacer()
                            Text("Slovensko").font(.subheadline).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                }
            }
        }

struct KostolyContent_Previews: PreviewProvider {
    static var previews: some View {
        KostolyContent()
    }
}
