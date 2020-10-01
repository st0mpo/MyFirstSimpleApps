//
//  ContentView.swift
//  View Function
//
//  Created by Александр Истомин on 27.01.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            LinkView(linkLabel: "Go to a new view!")
            makeHStackWithText("Hi, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func makeHStackWithText(_ label: String) -> some View {
    return HStack {
        Text(label)
    }
}

struct LinkView: View {
    
    let linkLabel: String
    
    
    var body: some View {
        NavigationLink(destination: Text("")) {
            Text(linkLabel)            }
    }
}
