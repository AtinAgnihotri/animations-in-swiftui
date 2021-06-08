//
//  ImplicitAnimations.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct ImplicitAnimations: View {
    
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Button("Tap me") {
            self.scale += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(scale)
        .blur(radius: (scale - 1) * 3)
        .animation(.default)
    }
}

struct ImplicitAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimations()
    }
}
