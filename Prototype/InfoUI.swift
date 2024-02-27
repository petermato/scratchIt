//
//  InfoUI.swift
//  Prototype
//
//  Created by Peter Mato on 12/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct InfoUI: View {
    var body: some View {
      //  ZStack{
        
        VStack{
            
            Image("LOGO").fixedSize(horizontal: true, vertical: true)
            Text("scratchIt").bold().font(.largeTitle)
            Text("Ver. 1.0").font(.body)
            
            VStack{
                Text("Všetky ikony prevzaté z:")
                Button("https://icons8.com") {UIApplication.shared.open(URL(string: "https://icons8.com")!)}
                
            }
    //    }
        }}
}
struct InfoUI_Previews: PreviewProvider {
    static var previews: some View {
        InfoUI()
    }
}
