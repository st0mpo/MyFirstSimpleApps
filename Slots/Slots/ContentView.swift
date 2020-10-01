//
//  ContentView.swift
//  Slots
//
//  Created by Александр Истомин on 31.01.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State private var credits = 1000
    private var symbols = ["apple", "star", "cherry"]
    @State private var number = [0, 0, 0]
    private var betAmount = 5
    
    
    var body: some View {
        
        ZStack {
            // Background
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255)).rotationEffect(Angle(degrees: 45)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image(symbols[number[0]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[number[1]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[number[2]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    self.number[0] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.number[1] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.number[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    if self.number[0] == self.number[1] && self.number[1] == self.number[2] {
                        
                        self.credits += self.betAmount * 10
                        
                    } else {
                        self.credits -= self.betAmount
                    
                    }
                    
                    
                }) {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                }
                
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
