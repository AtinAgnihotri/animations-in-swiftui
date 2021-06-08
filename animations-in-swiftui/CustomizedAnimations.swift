//
//  CustomizedAnimations.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct CustomizedAnimations: View {
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Button("Tap me") {
//            self.scale += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(scale)
                .opacity(Double(2 - scale))
                .animation(
                    Animation.easeInOut(duration: 2)
                        .repeatForever(autoreverses: false)
                )
        )
        .onAppear {
            self.scale = 2
        }
//        .scaleEffect(scale)
//        .blur(radius: (scale - 1) * 3)
//        .animation(.default)
//        .animation(.easeOut)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
//        .animation(.easeInOut(duration: 2))
//        .animation(
//            Animation.easeInOut(duration: 2)
////                .delay(1)
////                .repeatCount(2, autoreverses: true)
//                .repeatForever(autoreverses: true)
//        )
    }
}

struct CustomizedAnimations_Previews: PreviewProvider {
    static var previews: some View {
        CustomizedAnimations()
    }
}
