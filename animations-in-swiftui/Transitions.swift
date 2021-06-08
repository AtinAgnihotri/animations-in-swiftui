//
//  Transitions.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct Transitions: View {
    @State private var isShowing = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.isShowing.toggle()
                }
            }
            
            if isShowing {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
        
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}
