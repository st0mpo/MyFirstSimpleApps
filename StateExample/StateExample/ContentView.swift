//
//  ContentView.swift
//  StateExample
//
//  Created by Александр Истомин on 25.04.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text(String(counter))
                .font(.largeTitle)
            HStack {
                Button(action: {
                    self.counter += 1
                }) {
                    Text("+")
                        .bold()
                        .font(.largeTitle)
                }
                
                Button(action: {
                    if self.counter > 0 {
                    self.counter -= 1
                    }
                }) {
                    Text("-")
                        .bold()
                        .font(.largeTitle)
                }
                
                Button(action: {
                    self.counter += 10
                }) {
                    Text("+10")
                    .bold()
                    .font(.largeTitle)
                }
            }
            
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
