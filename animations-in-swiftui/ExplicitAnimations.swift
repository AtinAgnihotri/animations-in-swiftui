//
//  ExplicitAnimations.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct ExplicitAnimations: View {
    @State private var rotationAngle = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation (.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.rotationAngle += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 0, y: 1, z: 0))
//        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 1, y: 0, z: 0))
//        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 0, y: 0, z: 1))
//        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 1, y: 1, z: 0))
//        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 1, y: 0, z: 1))
//        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 0, y: 1, z: 1))
//        .rotation3DEffect(.degrees(rotationAngle), axis: (x: 1, y: 1, z: 1))
    }
}

struct ExplicitAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimations()
    }
}
