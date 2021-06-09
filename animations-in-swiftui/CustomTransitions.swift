//
//  CustomTransitions.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchorPoint: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchorPoint)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchorPoint: .topLeading), identity: CornerRotateModifier(amount: 0, anchorPoint: .topLeading))
    }
}

struct CustomTransitions: View {
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
                    .transition(.pivot)
            }
        }
        
    }
}

struct CustomTransitions_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitions()
    }
}
