//
//  AnimatingGestures.swift
//  animations-in-swiftui
//
//  Created by Atin Agnihotri on 08/06/21.
//

import SwiftUI

struct AnimatingGestures: View {
    
    @State private var dragAmount = CGSize.zero
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    
    var body: some View {
        
        HStack (spacing: 0) {
            ForEach(0..<letters.count) {
                Text(String(self.letters[$0])).padding(5).font(.title).background(self.enabled ? Color.blue : Color.red)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double($0)/20))
            }
        }
        .gesture(
            DragGesture()
                .onChanged { self.dragAmount = $0.translation }
                .onEnded {
                    _ in
                    self.enabled.toggle()
                    withAnimation(.interpolatingSpring(stiffness: 50, damping: 1)) {
                        self.dragAmount = .zero
                        
                    }
                }
        )
        
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { self.dragAmount = $0.translation }
//                    .onEnded {
//                        _ in
//                        withAnimation(.interpolatingSpring(stiffness: 50, damping: 1)) {
//                            self.dragAmount = .zero
//                        }
//                    }
//            )
//            .animation(.spring())
    }
}

struct AnimatingGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures()
    }
}
