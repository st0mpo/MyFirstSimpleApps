//
//  ContentView.swift
//  SwiftUIAnimationExercises
//
//  Created by Александр Истомин on 26.01.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var ringing = false
    @State private var showZleft = false
    @State private var showZmiddle = false
    @State private var showZright = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            Image(systemName: "bell.fill")
                .font(.title)
                .foregroundColor(Color(red: 0.995, green: 0.822, blue: 0.044))
                .rotationEffect(.degrees(ringing ? 0 : 90), anchor: .top)
                .offset(x: 50, y: -155)
                .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false))
                .onAppear {
                    self.ringing.toggle()
            }
            
            Image(systemName: "bed.double.fill")
                .font(.title)
                .foregroundColor(Color(red: 1.0, green: 0.631, blue: 0.053))
                .offset(x: -150, y: -153)
            
            Text("Z")
                .font(.headline)
                .scaleEffect(showZmiddle ? 1 : 0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
