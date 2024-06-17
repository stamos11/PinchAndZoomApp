//
//  ContentView.swift
//  PinchAndZoomApp
//
//  Created by stamoulis nikolaos on 16/6/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    
    var body: some View {
        NavigationView {
            ZStack {
                //MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                //MARK: - 1. TAP GESTURE
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                            } else {
                                withAnimation(.spring()) {
                                    imageScale = 1
                                }
                            }
                    })
                    .animation(.linear(duration: 1), value: isAnimating)
            } //: ZSTACK
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                isAnimating = true
            })
        } //: NAVIGATION VIEW
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
