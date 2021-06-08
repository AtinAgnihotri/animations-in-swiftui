//
//  AnimationBindings.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct AnimationBindings: View {
    @State private var animationScale: CGFloat = 1
    
    var body: some View {
        print ("Animation Scale \(animationScale)")
        
        return VStack {
            Stepper("Animation scale", value: $animationScale.animation(
                Animation.easeInOut(duration: 2)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                self.animationScale += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationScale)
            
            Spacer()
            
        }
    }
}

struct AnimationBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBindings()
    }
}
