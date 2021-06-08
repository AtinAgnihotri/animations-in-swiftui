//
//  ControllingAnimationStack.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct ControllingAnimationStack: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            self.enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.red : Color.blue)
//        .clipShape(Circle())
        .foregroundColor(.white)
        .animation(.default)
//        .animation(nil)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
//        .frame(width: 150, height: 150)
//        .background(Color.white)
//        .clipShape(Circle())
//        .frame(width: 200, height: 200)
//        .background(Color.blue)
//        .foregroundColor(.white)
//        .clipShape(Circle())
        
    }
}

struct ControllingAnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimationStack()
    }
}
