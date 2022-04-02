//
//  AbstractBackground.swift
//  City Guide
//
//  Created by Austin Suarez on 4/1/22.
//

import SwiftUI


struct AbstractBackground: View {
    var body: some View {
        // Vector
        Rectangle()
            .frame(width: 818, height: 136)
            .foregroundColor(Color("abstract"))
            .rotationEffect(Angle(degrees: -90))
            .position(x: 0, y: 0)
        
    }
}

struct AbstractBackground_Previews: PreviewProvider {
    static var previews: some View {
        AbstractBackground()
    }
}
