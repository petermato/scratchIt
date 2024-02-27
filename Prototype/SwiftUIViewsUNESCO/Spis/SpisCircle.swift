//
//  SpisCircle.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import SwiftUI

struct SpisCircle: View {
    var body: some View {
                    Image("Levocas")
                        .clipShape(Circle())
                        .overlay(Circle()
                        .stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 10)
                }
        }

struct SpisCircle_Previews: PreviewProvider {
    static var previews: some View {
        SpisCircle()
    }
}
